import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(id.toString()),
            const SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
