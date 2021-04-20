import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:rankstaurant/global/colors.dart';

class RBottomSheet extends StatelessWidget {
  const RBottomSheet({
    required this.title,
    required this.context,
    required this.child,
    this.deleteText,
    this.saveText,
    this.deleteAction,
    this.saveAction,
  });

  final Widget child;
  final BuildContext context;
  final String title;
  final String? deleteText;
  final String? saveText;
  final Function()? saveAction;
  final Function()? deleteAction;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Container(
                      margin: const EdgeInsets.only(top: 2),
                      child: const Text('cancel'))),
              Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(
                  onPressed: deleteAction,
                  child: Text(
                    deleteText ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: kRed),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: child,
          ),
          const Spacer(),
          if (saveText == null)
            Container()
          else
            ElevatedButton(onPressed: saveAction, child: Text(saveText!)),
        ],
      ),
    );
  }

  static void show(BuildContext context, Widget bottomSheet) {
    showCupertinoModalBottomSheet(
      expand: true,
      context: context,
      builder: (context) => bottomSheet,
    );
  }
}
