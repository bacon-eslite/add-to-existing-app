import 'package:flutter/services.dart';

class MainMethodChannel {
  static const String channelName = "Main";

  static Future<String?> getMessageFromNative() async {
    const channel = MethodChannel(channelName);
    final resp = (await channel.invokeMethod('message_to_flutter'));
    if (resp is! Map) {
      return 'resp: $resp';
    }
    final m = resp.cast<String, dynamic>();
    return m['message'];
  }

  static Future exit() async {
    await const MethodChannel(channelName).invokeMethod('exit');
  }
}
