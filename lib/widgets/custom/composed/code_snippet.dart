import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

import '../../base/card.dart';

class CodeSnippet extends StatelessWidget {
  final String? title;
  final String code;

  static const double kBarBubbleSize = 10.0;
  static const double kBarBubbleSpacing = 6.0;

  const CodeSnippet({
    super.key,
    this.title,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 6.0),
                ...[
                  CupertinoColors.systemRed,
                  CupertinoColors.systemOrange,
                  CupertinoColors.systemGreen
                ]
                    .map(
                      (color) => Row(
                        children: [
                          const SizedBox(width: kBarBubbleSpacing),
                          Container(
                            height: kBarBubbleSize,
                            width: kBarBubbleSize,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: color,
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
                const SizedBox(width: 12.0),
                if (title != null)
                  Text(
                    title!,
                    style: Theme.of(context).textTheme.caption,
                  ),
              ],
            ),
          ),
          const Divider(height: 1),
          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            color: Theme.of(context).colorScheme.onPrimary,
            child: SyntaxView(
              code: code, // Code text
              syntax: Syntax.DART, // Language
              syntaxTheme: SyntaxTheme.obsidian()
                ..backgroundColor = Theme.of(context).colorScheme.onPrimary,
              fontSize: 12.0, // Font size
              withZoom: false, // Enable/Disable zoom icon controls
              withLinesCount: true, // Enable/Disable line number
              // expanded: true, // Enable/Disable container expansion
            ),
          ),
        ],
      ),
    );
  }
}
