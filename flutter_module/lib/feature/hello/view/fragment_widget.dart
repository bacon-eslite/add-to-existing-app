import 'package:flutter/material.dart';

import '../method_channel/method_channel.dart';

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
    final resp = await PartialViewChannel.getMessageFromNative();
    setState(() => message = resp ?? 'No message');
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
            'Partial View',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            message ?? 'No message',
            style: const TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: () => PartialViewChannel.sendMessageToNative(),
            child: const Text('Send Message'),
          ),
          TextButton(
              onPressed: () => PartialViewChannel.exit(),
              child: const Text('Exit'))
        ],
      ),
    );
  }
}
