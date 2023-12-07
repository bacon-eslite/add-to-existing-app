import 'package:flutter/services.dart';

class FullscreenChannel {
  static const String channelName = "fullscreen";

  static Future<String?> getMessageFromNative() async {
    const channel = MethodChannel(channelName);
    final resp = (await channel.invokeMethod('message_to_flutter'));
    if (resp is! Map) {
      return 'resp: $resp';
    }
    final m = resp.cast<String, dynamic>();
    return m['message'];
  }

  static Future sendMessageToNative() async {
    await const MethodChannel(channelName).invokeMethod(
        'message_from_flutter', {'message': 'Hello from Flutter Fullscreen!'});
  }
}
