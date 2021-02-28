package dev.volskaya.agora

import android.app.Activity
import android.app.IntentService
import android.content.Context
import android.content.Intent
import android.os.Build
import android.util.Log
import androidx.annotation.NonNull
//import io.agora.rtc.IRtcEngineEventHandler
//import io.agora.rtc.RtcEngine
//import io.agora.rtc.RtcEngineConfig

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import java.nio.channels.Channel

class AgoraPlugin: FlutterPlugin, ActivityAware, MethodCallHandler {
  companion object {
    var channel: MethodChannel? = null
    var eventChannel: EventChannel? = null
    var sink: EventChannel.EventSink? = null
  }

  private lateinit var activity : Activity

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "agora").also { it.setMethodCallHandler(this) }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel?.setMethodCallHandler(null)?.also { channel = null }
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    when (call.method) {
      "initialize" -> Intent(activity, ChannelService::class.java).also {
        val appId = call.argument<String>("token")!!
        val areaCode = call.argument<Int>("areaCode")

        it.action = ChannelService.ACTION_INIT_ENGINE
        it.putExtra("appId", appId)
        it.putExtra("areaCode", areaCode)

        startForegroundService(it)
      }
      "join" -> Intent(activity, ChannelService::class.java).also {
        val token = call.argument<String>("token")!!
        val channelName = call.argument<String>("channelName")!!
        val uid = call.argument<Int>("uid")!!

        it.action = ChannelService.ACTION_JOIN_CHANNEL
        it.putExtra("token", token)
        it.putExtra("channelName", channelName)
        it.putExtra("uid", uid)

        startForegroundService(it)
      }
      "startForeground" -> Intent(activity, ChannelService::class.java).also {
        it.action = ChannelService.ACTION_START
        startForegroundService(it)
      }
      "stopForeground" -> Intent(activity, ChannelService::class.java).also {
        it.action = ChannelService.ACTION_STOP
        startForegroundService(it)
      }
      "updateNotification" -> Intent(activity, ChannelService::class.java).also {
        it.action = ChannelService.ACTION_UPDATE_NOTIFICATION
        startForegroundService(it)
      }
      else -> result.notImplemented()
    }
  }

  private fun startForegroundService(intent: Intent) {
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
      activity.startForegroundService(intent)
    } else {
      activity.startService(intent)
    }
  }


  override fun onAttachedToActivity(binding: ActivityPluginBinding) { activity = binding.activity }
  override fun onDetachedFromActivityForConfigChanges() {}
  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) { activity = binding.activity }
  override fun onDetachedFromActivity() {}
}
