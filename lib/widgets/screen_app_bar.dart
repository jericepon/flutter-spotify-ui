import 'package:flutter/material.dart';

class ScreenAppBar extends StatelessWidget {
  const ScreenAppBar({
    Key? key,
    this.centerWidget,
    this.leadingWidget,
    this.actionsWidget,
  }) : super(key: key);

  final Widget? centerWidget;
  final Widget? leadingWidget;
  final List<Widget>? actionsWidget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: leadingWidget,
      title: centerWidget,
      actions: actionsWidget,
      leadingWidth: 32,
    );
  }
}
