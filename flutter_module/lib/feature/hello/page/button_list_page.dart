import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/style/style.dart';
import '../../../common/view/view.dart';
import '../../../generated/l10n.dart';

class ButtonListPage extends StatelessWidget {
  const ButtonListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).home_menu_buttons_and_messaging),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Dialogs.showOkDialog(context,
                  title: 'Title', message: 'Message'),
              style: ElevatedButtonStyles.success(),
              child: const Text('Show dialog'),
            ),
            TextButton(
                onPressed: () => showSnackBar(
                      context,
                      'Message',
                      action: SnackBarAction(
                        label: 'Action',
                        textColor: AppColors.white,
                        onPressed: () =>
                            ScaffoldMessenger.of(context).clearSnackBars(),
                      ),
                    ),
                style: TextButtonStyles.danger(),
                child: const Text('Show snackbar')),
            OutlinedButton(
                onPressed: () => showBottomSheet(context),
                child: const Text('Show bottom sheet')),
            IconButton(
                onPressed: () => showCupertinoActionSheet(context),
                icon: const Icon(Icons.ads_click)),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showCupertinoActionSheet(BuildContext context) {
    return showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            title: const Text('Title'),
            message: const Text('Message'),
            actions: [
              CupertinoActionSheetAction(
                onPressed: () => Navigator.pop(context),
                child: const Text('Action 1'),
              ),
              CupertinoActionSheetAction(
                onPressed: () => Navigator.pop(context),
                child: const Text('Action 2'),
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
          );
        });
  }

  Future<dynamic> showBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => SizedBox(
        height: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Modal BottomSheet'),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButtonStyles.warning(),
                child: const Text('Close BottomSheet'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
