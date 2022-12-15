import 'package:flutter/material.dart';
import 'package:slide_engine_showcase/types/enums/code_snippets.dart';
import 'package:slide_engine_showcase/widgets/custom/composed/code_snippet.dart';
import 'package:slide_engine_showcase/widgets/custom/composed/linked_quote.dart';

class Components1Slide extends StatelessWidget {
  const Components1Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12.0),
        const Text('Main slide functionality via "PageView"'),
        const SizedBox(height: 12.0),
        CodeSnippet(
          title: 'slider_scaffold.dart',
          code: CodeSnippets.pageViewBlueprint.text,
        ),
        const SizedBox(height: 12.0),
        const LinkedQuote(
          quote: 'A scrollable list that works page by page.',
          link: 'https://api.flutter.dev/flutter/widgets/PageView-class.html',
        ),
        const SizedBox(height: 12.0),
        const Text('Single source of truth: PageController'),
      ],
    );
  }
}
