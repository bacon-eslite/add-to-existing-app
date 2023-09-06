import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_module/common/util/view/snackbar.dart';
import 'package:flutter_module/generated/l10n.dart';
import 'package:hello/hello.dart';
import 'package:random_x/random_x.dart';

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
        title: Text(S.of(context).home_menu_fullscreen),
        actions: [
          IconButton(
            onPressed: () => showSnackBar(
                context, HelloApi().sayHello(name: RndX.generateName())),
            icon: const Icon(Icons.published_with_changes_rounded),
          )
        ],
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
