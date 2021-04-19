import 'package:flutter/material.dart';

class RContainer extends StatelessWidget {
  const RContainer({
    required this.headerTitle,
    required this.headerContent,
    required this.body,
    this.leftIcon,
    this.leftAction,
    this.rightIcon,
    this.rightAction,
  });

  final String headerTitle;
  final Widget headerContent;
  final Widget body;
  final Icon? leftIcon;
  final Icon? rightIcon;
  final Function()? leftAction;
  final Function()? rightAction;

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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildHeaderTitle(context),
                headerContent,
              ],
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

  Widget buildHeaderTitle(BuildContext context) {
    if (leftIcon != null) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildLeftAction(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 24),
            child:
                Text(headerTitle, style: Theme.of(context).textTheme.headline6),
          ),
          buildRightAction(),
        ],
      );
    }
    return Text(headerTitle, style: Theme.of(context).textTheme.headline6);
  }

  Widget buildLeftAction() {
    if (leftIcon != null) {
      return InkWell(
        onTap: leftAction,
        child: Container(
          margin: const EdgeInsets.only(top: 8),
          child: Padding(
            padding: headerPadding,
            child: leftIcon,
          ),
        ),
      );
    } else {
      return const Padding(
        padding: headerPadding,
        child: SizedBox(
          height: 18,
          width: 18,
        ),
      );
    }
  }

  Widget buildRightAction() {
    if (rightIcon != null) {
      return InkWell(
        onTap: rightAction,
        child: Container(
          margin: const EdgeInsets.only(top: 4),
          child: Padding(
            padding: headerPadding,
            child: rightIcon,
          ),
        ),
      );
    } else {
      return const Padding(
        padding: headerPadding,
        child: SizedBox(
          height: 18,
          width: 18,
        ),
      );
    }
  }
}
