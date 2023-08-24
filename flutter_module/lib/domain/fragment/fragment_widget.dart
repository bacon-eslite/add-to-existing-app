import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    final msg = await const MethodChannel('fragment')
        .invokeMethod('message_to_flutter');
    setState(() => message = msg);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: Text(
              'Fragment',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              message ?? 'No message yet',
              style: const TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => const MethodChannel('fragment').invokeMethod(
                  'message_from_flutter',
                  {'message': 'Hello from Flutter Fragment!'}),
              child: const Text('Send Message'),
            ),
          ),
        ],
      ),
    );
  }
}
