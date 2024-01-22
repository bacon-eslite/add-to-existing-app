import 'package:flutter/services.dart';

class PartialViewChannel {
  static const String channelName = "PartialView";

  static Future sendMessageToNative() async {
    await const MethodChannel(channelName).invokeMethod(
        'message_from_flutter', {'message': 'Hello from Flutter Fragment!'});
  }
}
