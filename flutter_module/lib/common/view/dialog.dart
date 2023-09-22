import 'package:flutter/material.dart';
import 'package:flutter_module/generated/l10n.dart';

class Dialogs {
  static Future<void> showOkDialog(
    BuildContext context, {
    String? title,
    String? message,
  }) async {
    return showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: title != null ? Text(title) : null,
        content: message != null ? Text(message) : null,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(S.of(context).ok),
          ),
        ],
      ),
    );
  }

  static Future<bool> showYesNoDialog(
    BuildContext context, {
    String? title,
    String? message,
  }) async {
    return await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: title != null ? Text(title) : null,
            content: message != null ? Text(message) : null,
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: Text(S.of(context).no),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: Text(S.of(context).yes),
              ),
            ],
          ),
        ) ??
        false;
  }

//   show single choice dialog
  static Future<int?> showSingleChoiceDialog(
    BuildContext context, {
    String? title,
    List<String>? items,
  }) async {
    return await showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              title: title != null ? Text(title) : null,
              children: items!
                  .map(
                    (e) => SimpleDialogOption(
                      onPressed: () => Navigator.pop(context, items.indexOf(e)),
                      child: Text(e),
                    ),
                  )
                  .toList(),
            ));
  }
}
