package dev.volskaya.agora

import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel

class EventStream(messenger: BinaryMessenger, name: String) : EventChannel.StreamHandler {
    private val eventChannel = EventChannel(messenger, name).also { it.setStreamHandler(this) }

    var sink: EventChannel.EventSink? = null

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) { sink = events }
    override fun onCancel(arguments: Any?) { sink = null }
}