import 'package:flutter/material.dart';

import '../../../../types/enums/code_snippets.dart';
import '../../../../widgets/custom/composed/code_snippet.dart';

class Navigation3Slide extends StatelessWidget {
  const Navigation3Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12.0),
        const Text(
            'ShellRoute to define a persistant layer (adds another Navigator widget)'),
        const SizedBox(height: 12.0),
        CodeSnippet(
          title: 'router.dart',
          code: CodeSnippets.goRouterShell.text,
        ),
      ],
    );
  }
}
