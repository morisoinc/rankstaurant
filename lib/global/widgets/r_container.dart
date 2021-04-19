import 'package:flutter/material.dart';

class RContainer extends StatelessWidget {
  const RContainer(
      {required this.headerTitle,
      required this.headerContent,
      required this.body});

  final String headerTitle;
  final Widget headerContent;
  final Widget body;

  static const bodyPadding = EdgeInsets.symmetric(horizontal: 24);
  static const headerPadding = EdgeInsets.all(24);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: headerPadding,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(headerTitle,
                      style: Theme.of(context).textTheme.headline6),
                  headerContent,
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: bodyPadding,
              child: body,
            ),
          )
        ],
      ),
    );
  }
}
