import 'package:flutter/material.dart';

import '../../../../types/extensions/iterable.dart';
import 'enumeration_entry.dart';

class EnumerationBlock extends StatelessWidget {
  final String? title;

  final bool useEnumerationChar;

  final bool numbered;
  final List<String>? entries;
  final List<EnumerationEntry>? customEntries;

  final double entrySpacing;

  /// Can be used to manually add spacing to the enumeration char
  /// if it's not aligned properly
  final double? enumerationTopPadding;

  const EnumerationBlock({
    Key? key,
    this.title,
    this.useEnumerationChar = true,
    this.numbered = false,
    this.entries,
    this.customEntries,
    this.entrySpacing = 4.0,
    this.enumerationTopPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> usedEntries = List.from(
      (entries?.mapIndexed((text, index) => EnumerationEntry(
                    text: text,
                    useEnumerationChar: useEnumerationChar,
                    number: numbered ? index : null,
                    enumerationTopPadding: enumerationTopPadding ?? 0,
                  )) ??
              customEntries ??
              [])
          .expand((entry) => [
                entry,
                SizedBox(height: entrySpacing),
              ]),
    );

    if (usedEntries.isNotEmpty) usedEntries.removeLast();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Text(title!),
          const SizedBox(height: 6.0),
        ],
        ...usedEntries,
        // if (usedEntries.isNotEmpty) SizedBox(height: 6.0),
      ],
    );
  }
}
