package dev.volskaya.agora

import android.app.Activity
import android.content.Context
import android.content.Context.POWER_SERVICE
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.PowerManager
import android.provider.Settings
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import java.lang.ref.WeakReference


class AgoraPlugin : FlutterPlugin, ActivityAware, MethodCallHandler {
  private lateinit var activity: Activity

  companion object {
    const val METHOD_CHANNEL_NAME = "dev.volskaya.agora"

    var messenger: BinaryMessenger? = null
    var channel: MethodChannel? = null
    var engineCoordinator: AgoraCoordinator? = null // The `activity` is unreferenced, when this Activity is detached.

    private val participantStreams: MutableMap<Int, MethodChannel> = mutableMapOf()

    // If the participant stream doesn't exist and the activity is mounted, creates a stream.
    fun getParticipantStream(uid: Int): MethodChannel? {
      return messenger?.let {
        participantStreams.getOrPut(uid, { MethodChannel(messenger!!, "$METHOD_CHANNEL_NAME.participant.$uid") })
      }
    }

    fun executeActionIntent(context: Context, action: String) { executeActionIntent(context, action, null) }

    private fun executeActionIntent(context: Context, action: String, extras: ((Intent) -> Unit)?) {
      Intent(context, ChannelService::class.java).also {
        it.action = action
        extras?.let { callback -> callback(it) }

        startForegroundService(context, it)
      }
    }

    private fun startForegroundService(context: Context, intent: Intent) {
      if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
        context.startForegroundService(intent)
      } else {
        context.startService(intent)
      }
    }

    fun requestIgnoreBatteryOptimizations(activity: Activity) {
      if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
        val packageName = activity.packageName
        val powerManager = activity.getSystemService(POWER_SERVICE) as PowerManager?

        if (powerManager?.isIgnoringBatteryOptimizations(packageName) == false) {
          Intent().let {
            it.action = Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS
            it.data = Uri.parse("package:$packageName")

            activity.startActivity(it)
          }
        }
      }
    }
  }

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    messenger = flutterPluginBinding.binaryMessenger.also { messenger ->
      channel = MethodChannel(messenger, METHOD_CHANNEL_NAME).also { it.setMethodCallHandler(this) }
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel?.setMethodCallHandler(null)?.also { channel = null }
    messenger?.let {
      participantStreams.clear()
      messenger = null
    }
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    when (call.method) {
      "initialize" -> {
        // Reuse the old engine, if possible.
        engineCoordinator = engineCoordinator ?: AgoraCoordinator(
                activity.applicationContext,
                call.argument<String>("appId")!!,
                call.argument<Int>("areaCode")!!
        )

        engineCoordinator?.contextRef = WeakReference(activity.application)
        engineCoordinator?.hydrate()
      }
      "enableAudio",
      "enableVideo",
      "enableLocalAudio",
      "enableLocalVideo" -> {
        assert(engineCoordinator?.engine != null)

        val enabled = call.argument<Boolean>("enabled")!!

        engineCoordinator?.engine?.let {
          when (call.method) {
            "enableAudio" -> if (enabled) { it.enableAudio() } else { it.disableAudio() }
            "enableVideo" -> if (enabled) { it.enableVideo() } else { it.disableVideo() }
            "enableLocalAudio" -> it.enableLocalAudio(enabled)
            "enableLocalVideo" -> it.enableLocalVideo(enabled)
            else -> {}
          }
        }
      }
      "muteRemoteAudioStream",
      "muteRemoteVideoStream" -> {
        assert(engineCoordinator?.engine != null)

        val uid = call.argument<Int>("uid")!!
        val muted = call.argument<Boolean>("muted")!!

        engineCoordinator?.engine?.let {
          when (call.method) {
            "muteRemoteAudioStream" -> it.muteRemoteAudioStream(uid, muted)
            "muteRemoteVideoStream" -> it.muteRemoteVideoStream(uid, muted)
            else -> {}
          }
        }
      }
      "joinChannel" -> {
        val token = call.argument<String>("token")!!
        val channelName = call.argument<String>("channelName")!!
        val uid = call.argument<Int>("uid")!!
        val profile = call.argument<Int>("profile")!!
        val role = call.argument<Int>("role")!!

        engineCoordinator?.joinChannel(token, channelName, uid, profile, role, null)
      }
      "leaveChannel" -> engineCoordinator?.engine?.leaveChannel()
      "requestIgnoreBatteryOptimizations" -> requestIgnoreBatteryOptimizations(activity)
      "shouldIgnoreBatteryOptimizations" -> {
        // If the API level is too low or the PowerManager is missing assume false.
        val shouldIgnore = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
          val packageName = activity.packageName
          val powerManager = activity.getSystemService(POWER_SERVICE) as PowerManager?

          powerManager?.isIgnoringBatteryOptimizations(packageName)?.let { !it } ?: false
        } else {
          false
        }

        return result.success(shouldIgnore)
      }
      else -> return result.notImplemented()
    }

    result.success(null)
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) { activity = binding.activity }
  override fun onDetachedFromActivityForConfigChanges() {}
  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) { activity = binding.activity }
  override fun onDetachedFromActivity() { }
}
