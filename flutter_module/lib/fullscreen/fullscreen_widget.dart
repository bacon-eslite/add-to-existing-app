import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_module/api_settings.dart';
import 'package:petstore_api/api.dart';

class FullScreenWidget extends StatefulWidget {
  const FullScreenWidget({super.key});

  @override
  State<FullScreenWidget> createState() => _FullScreenWidgetState();
}

class _FullScreenWidgetState extends State<FullScreenWidget> {
  String? message;

  @override
  void initState() {
    initMessage();
    super.initState();
  }

  Future<void> initMessage() async {
    final msg = await const MethodChannel('fullscreen')
        .invokeMethod('message_to_flutter');

    setState(() => message = msg);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Full Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              message ?? 'No message yet',
              style: const TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                const MethodChannel('fullscreen').invokeMethod(
                    'message_from_flutter',
                    {'message': 'Hello from Flutter Fullscreen!'});
                SystemNavigator.pop();
              },
              child: const Text('Exit'),
            ),
          ),
        ],
      ),
    );
  }
}
