package dev.volskaya.agora

import android.app.Notification
import android.app.PendingIntent
import android.app.Service
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.os.IBinder
import android.os.PowerManager
import androidx.core.app.NotificationCompat
import java.lang.ref.WeakReference

class ChannelService : Service() {
    var engineCoordinator: AgoraCoordinator? = null
    var startId: Int? = 1
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

        val notification = createNotification()
        startForeground(startId!!, notification)
    }

    override fun onDestroy() {
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

    private fun createNotification(): Notification {
        val notificationIntent = applicationContext.packageManager.getLaunchIntentForPackage(applicationContext.packageName)
        val pendingIntent = PendingIntent.getActivity(this, 0, notificationIntent, 0)

        val applicationInfo = applicationContext.packageManager.getApplicationInfo(packageName, PackageManager.GET_META_DATA)
        val icon = applicationInfo.metaData.getInt(NOTIFICATION_ICON_KEY)
        val color = applicationInfo.metaData.getInt(NOTIFICATION_COLOR_KEY)

        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val builder = Notification.Builder(this, NOTIFICATION_CHANNEL)
                    .setContentTitle("Sleeping with a stranger")
                    .setContentText("Napy is maintaining your connection in the background")
                    .setSmallIcon(icon)
                    .setColor(applicationContext.getColor(color))
                    .setChannelId(NOTIFICATION_CHANNEL)
                    .setUsesChronometer(true)
                    .setOngoing(true)
                    .setContentIntent(pendingIntent)

            engineCoordinator?.mediaSession?.let {
                builder.style = Notification.MediaStyle().setMediaSession(it.sessionToken)
            }

            builder.build()
        } else {
            NotificationCompat.Builder(this, NOTIFICATION_CHANNEL)
                    .setContentTitle("Sleeping with a stranger")
                    .setContentText("Napy is maintaining your connection in the background")
                    .setSmallIcon(icon)
                    .setChannelId(NOTIFICATION_CHANNEL)
                    .setUsesChronometer(true)
                    .setOngoing(true)
                    .setContentIntent(pendingIntent)
                    .build()
        }
    }
}
