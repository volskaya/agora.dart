package dev.volskaya.agora

import android.app.Notification
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Intent
import android.os.Build
import android.os.IBinder
import android.util.Log


class ChannelService : Service() {
    companion object {
        const val ACTION_INIT_ENGINE = "action_init_engine"
        const val ACTION_JOIN_CHANNEL = "action_join_channel"
        const val ACTION_START = "action_start"
        const val ACTION_STOP = "action_stop"
        const val ACTION_UPDATE_NOTIFICATION = "action_update_notification"

        const val ONGOING_NOTIFICATION = "agora_plugin_foreground_service_notification"

        var engineCoordinator: AgoraCoordinator? = null
    }

    override fun onBind(intent: Intent?): IBinder? {
        TODO("Not yet implemented")
    }

    private fun createNotification(flags: Int, title: String, subtitle: String?): Notification {
        val pendingIntent: PendingIntent = Intent(this, AgoraPlugin::class.java).let {
            PendingIntent.getActivity(this, 0, it, flags)
        }

        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            Notification.Builder(this, "agora_plugin_default_channel")
                    .setContentTitle(title)
                    .setContentText(subtitle ?: "Napy is maintaining your call in the background")
                    .setSmallIcon(android.R.drawable.edit_text)
                    .setContentIntent(pendingIntent)
                    .setTicker("Ticker text")
                    .build()
        } else {
            TODO("VERSION.SDK_INT < O")
        }
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_START -> {
                Log.d(null, "Start service command received")

                val notification = createNotification(flags, "Sleeping with a stranger", null)
                startForeground(startId, notification)
                Log.d(null, "Starting foreground ${hashCode()}")
            }
            ACTION_STOP -> {
                Log.d(null, "Stop service command received ${hashCode()}")

                stopForeground(true)
                stopSelfResult(startId)
            }
            ACTION_UPDATE_NOTIFICATION -> {
                val notification = createNotification(flags, "Sleeping with a stranger UPDATED", null)
                val notificationManager = applicationContext.getSystemService(NOTIFICATION_SERVICE) as NotificationManager

                notificationManager.notify(startId, notification)
            }
            ACTION_INIT_ENGINE -> {
                val appId = intent.getStringExtra("appId")!!
                val areaCode = intent.getIntExtra("areaCode", 0)

                engineCoordinator = AgoraCoordinator(this, appId, areaCode)
            }
        }

        return START_NOT_STICKY
    }

    override fun onDestroy() {
        super.onDestroy()

        Log.d(null, "Service destroyed ${hashCode()}")
    }
}