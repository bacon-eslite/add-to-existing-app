import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello/hello.dart';
import 'package:random_x/random_x.dart';

import '../../../common/view/view.dart';
import '../../../generated/l10n.dart';
import '../method_channel/full_screen_channel.dart';

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
    final msg = await FullscreenChannel.getMessageFromNative();

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
              onPressed: () async {
                await FullscreenChannel.sendMessageToNative();
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
