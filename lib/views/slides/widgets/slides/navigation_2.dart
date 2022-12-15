import 'package:flutter/material.dart';

import '../../../../types/enums/code_snippets.dart';
import '../../../../widgets/custom/composed/code_snippet.dart';

class Navigation2Slide extends StatelessWidget {
  const Navigation2Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12.0),
        const Text(
            'List of GoRoute objects defining the available routes. Nesting them in the routes parameter'),
        const SizedBox(height: 12.0),
        CodeSnippet(
          title: 'router.dart',
          code: CodeSnippets.goRouterPath.text,
        ),
      ],
    );
  }
}
