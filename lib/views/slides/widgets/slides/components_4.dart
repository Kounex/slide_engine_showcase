import 'package:flutter/material.dart';

import '../../../../types/enums/code_snippets.dart';
import '../../../../widgets/custom/composed/code_snippet.dart';

class Components4Slide extends StatelessWidget {
  const Components4Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12.0),
        const Text('Keyboard / presenter to change slides'),
        const SizedBox(height: 12.0),
        CodeSnippet(
          title: 'keyboard_listener.dart',
          code: CodeSnippets.keyboardListener.text,
        ),
      ],
    );
  }
}
