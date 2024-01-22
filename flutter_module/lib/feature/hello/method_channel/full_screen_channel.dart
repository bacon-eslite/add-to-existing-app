import 'package:flutter/services.dart';

class FullscreenChannel {
  static const String channelName = "Fullscreen";

  static Future sendMessageToNative() async {
    await const MethodChannel(channelName).invokeMethod(
        'message_from_flutter', {'message': 'Hello from Flutter Fullscreen!'});
  }
}
