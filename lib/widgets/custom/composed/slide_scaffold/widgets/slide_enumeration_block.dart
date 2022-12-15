import 'package:flutter/material.dart';

import '../../../atomic/enumeration_block/enumeration_block.dart';
import '../../../atomic/enumeration_block/enumeration_entry.dart';

class SlideEnumerationEntry {
  final String text;
  final int level;

  final double? extraTopSpacing;

  SlideEnumerationEntry({
    required this.text,
    this.level = 0,
    this.extraTopSpacing,
  });
}

class SlideEnumerationBlock extends StatelessWidget {
  final List<String>? entries;
  final List<SlideEnumerationEntry>? customEntries;

  final bool useEnumerationChar;

  const SlideEnumerationBlock({
    super.key,
    this.entries,
    this.customEntries,
    this.useEnumerationChar = true,
  });

  @override
  Widget build(BuildContext context) {
    return EnumerationBlock(
      entrySpacing: 6.0,
      useEnumerationChar: useEnumerationChar,
      entries: entries,
      customEntries: customEntries
          ?.map(
            (customEntry) => EnumerationEntry(
              extraTopSpacing: customEntry.extraTopSpacing ?? 0,
              text: customEntry.text,
              level: customEntry.level,
              levelSpacing: 24.0,
            ),
          )
          .toList(),
    );
  }
}
