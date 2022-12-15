import 'package:flutter/material.dart';
import 'package:slide_engine_showcase/types/enums/code_snippets.dart';
import 'package:slide_engine_showcase/widgets/custom/composed/code_snippet.dart';

class Components3Slide extends StatelessWidget {
  const Components3Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12.0),
        const Text('Making use of SizeTransition'),
        const SizedBox(height: 12.0),
        CodeSnippet(
          title: 'widget_slider.dart',
          code: CodeSnippets.controlsAnimationSizeTransition.text,
        ),
      ],
    );
  }
}
