import 'package:flutter/material.dart';

class WebScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? body;

  final Color? backgroundColor;

  const WebScaffold({
    super.key,
    this.appBar,
    this.drawer,
    this.body,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: appBar,
        drawer: drawer,
        body: body,
      ),
    );
  }
}
