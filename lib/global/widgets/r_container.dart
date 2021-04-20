import 'package:flutter/material.dart';

class RContainer extends StatelessWidget {
  const RContainer({
    this.headerTitle,
    this.headerContent,
    required this.body,
    this.leftIcon,
    this.leftAction,
    this.rightIcon,
    this.rightAction,
  });

  final String? headerTitle;
  final Widget? headerContent;
  final Widget body;
  final Icon? leftIcon;
  final Icon? rightIcon;
  final Function()? leftAction;
  final Function()? rightAction;

  static const bodyPadding = EdgeInsets.symmetric(horizontal: 16);
  static const headerPadding = EdgeInsets.only(top: 16);

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
                buildHeaderContent(context),
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
    if (leftIcon == null && rightIcon == null && headerTitle == null) {
      return Container();
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildLeftAction(),
        if (headerTitle == null)
          Container()
        else
          Padding(
              padding: headerPadding,
              child: Text(headerTitle!,
                  style: Theme.of(context).textTheme.headline6)),
        buildRightAction(),
      ],
    );
  }

  Widget buildHeaderContent(BuildContext context) {
    if (headerContent == null) {
      return Container();
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(padding: headerPadding, child: headerContent),
          const SizedBox(height: 16),
        ],
      );
    }
  }

  Widget buildLeftAction() {
    if (leftIcon != null) {
      return InkWell(
        onTap: leftAction,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: leftIcon,
        ),
      );
    } else {
      return const Padding(
        padding: EdgeInsets.all(24),
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
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: rightIcon,
        ),
      );
    } else {
      return const Padding(
        padding: EdgeInsets.all(24),
        child: SizedBox(
          height: 18,
          width: 18,
        ),
      );
    }
  }
}
