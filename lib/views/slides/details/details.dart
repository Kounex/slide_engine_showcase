import 'package:flutter/material.dart';
import 'package:slide_engine_showcase/widgets/base/web_scaffold.dart';

class SlideDetailsView extends StatelessWidget {
  final int id;

  const SlideDetailsView({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return WebScaffold(
      body: Center(
        child: Text(id.toString()),
      ),
    );
  }
}
