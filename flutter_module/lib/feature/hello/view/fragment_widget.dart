import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/util/util.dart';

class FragmentWidget extends StatefulWidget {
  const FragmentWidget({super.key});

  @override
  State<FragmentWidget> createState() => _FragmentWidgetState();
}

class _FragmentWidgetState extends State<FragmentWidget> {
  String? message;

  @override
  void initState() {
    initMessage();
    super.initState();
  }

  Future<void> initMessage() async {
    const channel = MethodChannel('fragment');
    final resp = (await channel.invokeMethod('message_to_flutter'));
    Logger.d('resp: $resp');
    if (resp is! Map) {
      setState(() => message = 'resp: $resp');
      return;
    }
    final m = resp.cast<String, dynamic>();
    setState(() => message = m['message']);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Fragment',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            message ?? 'No message',
            style: const TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: () => const MethodChannel('fragment').invokeMethod(
                'message_from_flutter',
                {'message': 'Hello from Flutter Fragment!'}),
            child: const Text('Send Message'),
          ),
          TextButton(
              onPressed: () {
                const MethodChannel('fragment').invokeMethod('exit');
              },
              child: const Text('Exit'))
        ],
      ),
    );
  }
}
