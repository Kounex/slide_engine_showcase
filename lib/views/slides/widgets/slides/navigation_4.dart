import 'package:flutter/material.dart';

import '../../../../types/enums/code_snippets.dart';
import '../../../../widgets/custom/composed/code_snippet.dart';

class Navigation4Slide extends StatelessWidget {
  const Navigation4Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
            'Access to the GoRouterState property (state) in the pageBuilder / builder parameter to access URL parameters'),
        const SizedBox(height: 12.0),
        CodeSnippet(
          title: 'router.dart',
          code: CodeSnippets.goRouterState.text,
        ),
        const SizedBox(height: 12.0),
        const Text('Or access it from anywhere with the BuildContext'),
        const SizedBox(height: 12.0),
        CodeSnippet(
          code: CodeSnippets.goRouterOfState.text,
        ),
      ],
    );
  }
}
