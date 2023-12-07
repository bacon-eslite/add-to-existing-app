import 'package:flutter/services.dart';

class PartialViewChannel {
  static const String channelName = "partial_view";
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
        'message_from_flutter', {'message': 'Hello from Flutter Fragment!'});
  }

  static Future exit() async {
    await const MethodChannel(channelName).invokeMethod('exit');
  }
}
