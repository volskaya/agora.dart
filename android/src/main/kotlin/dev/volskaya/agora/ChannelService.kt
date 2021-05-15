package dev.volskaya.agora

import android.app.Notification
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.os.IBinder
import android.os.PowerManager
import androidx.core.app.NotificationCompat
import java.lang.ref.WeakReference


class ChannelService : Service() {
    var engineCoordinator: AgoraCoordinator? = null
    var startId: Int? = null
    var wakeLock: PowerManager.WakeLock? = null

    companion object {
        const val NOTIFICATION_CHANNEL = "agora_plugin_default_channel"
        const val WAKE_LOCK_TAG = "Napy::ChannelServiceWakeLock"
        const val NOTIFICATION_ICON_KEY = "com.google.firebase.messaging.default_notification_icon"
        const val NOTIFICATION_COLOR_KEY = "com.google.firebase.messaging.default_notification_color"
    }

    override fun onBind(intent: Intent?): IBinder? { return null }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int { return START_STICKY }

    override fun onCreate() {
        super.onCreate()
        engineCoordinator = AgoraPlugin.engineCoordinator?.also {
            assert(it.service == null)
            it.service = WeakReference(this)
        }

        try {
            val powerManager: PowerManager = getSystemService(POWER_SERVICE) as PowerManager
            wakeLock = powerManager.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, WAKE_LOCK_TAG).also {
                it.acquire(60 * 60 * 1000L) // 60 minutes.
            }
        } catch (e: NoSuchMethodError) {}

        startId = 1
        val notification = createNotification()
        startForeground(startId!!, notification)
    }

    override fun onDestroy() {
        startId = null
        wakeLock?.release()
        engineCoordinator?.let {
            engineCoordinator = null
            it.engine.leaveChannel()
            assert(it.service?.get() == this)
            it.service = null
        }

        super.onDestroy()
    }

    fun stop() {
        stopForeground(true)
        stopSelf()
    }

    fun rebuildNotification() {
        startId?.let { notificationId ->
            val notificationManager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            val notification = createNotification()
            notificationManager.notify(notificationId, notification)
        }
    }

    private fun createNotification(): Notification {
        val notificationIntent = applicationContext.packageManager.getLaunchIntentForPackage(applicationContext.packageName)
        val pendingIntent = PendingIntent.getActivity(this, 0, notificationIntent, 0)

        val applicationInfo = applicationContext.packageManager.getApplicationInfo(packageName, PackageManager.GET_META_DATA)
        val icon = applicationInfo.metaData.getInt(NOTIFICATION_ICON_KEY)
        val color = applicationInfo.metaData.getInt(NOTIFICATION_COLOR_KEY)

        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val builder = Notification.Builder(this, NOTIFICATION_CHANNEL)
                    .setSmallIcon(icon)
                    .setColor(applicationContext.getColor(color))
                    .setColorized(true)
                    .setChannelId(NOTIFICATION_CHANNEL)
                    .setOngoing(true)
                    .setContentIntent(pendingIntent)

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                builder.setAllowSystemGeneratedContextualActions(false)
            }

            AgoraPlugin.notificationTitle?.let { builder.setContentTitle(it) }
            AgoraPlugin.notificationSubtitle?.let { builder.setContentText(it) }

            builder.build()
        } else {
            val builder = NotificationCompat.Builder(this, NOTIFICATION_CHANNEL)
                    .setSmallIcon(icon)
                    .setChannelId(NOTIFICATION_CHANNEL)
                    .setOngoing(true)
                    .setContentIntent(pendingIntent)

            AgoraPlugin.notificationTitle?.let { builder.setContentTitle(it) }
            AgoraPlugin.notificationSubtitle?.let { builder.setContentText(it) }

            builder.build()
        }
    }
}
