import 'dart:async';

import 'package:flutter/services.dart';

class Agora {
  static const MethodChannel _channel = const MethodChannel('agora');

  static Future startForeground() => _channel.invokeMethod('startForeground');
  static Future stopForeground() => _channel.invokeMethod('stopForeground');
  static Future updateNotification() => _channel.invokeMethod('updateNotification');
}
