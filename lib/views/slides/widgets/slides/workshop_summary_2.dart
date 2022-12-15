import 'package:flutter/material.dart';
import 'package:slide_engine_showcase/widgets/custom/composed/slide_scaffold/widgets/slide_enumeration_block.dart';

class WorkshopSummary2Slide extends StatelessWidget {
  const WorkshopSummary2Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideEnumerationBlock(
          customEntries: [
            SlideEnumerationEntry(text: 'Navigator 1.0'),
            SlideEnumerationEntry(
              text: 'Imperative approach',
              level: 1,
            ),
            SlideEnumerationEntry(
              text:
                  'Basic navigation approach in Flutter (part of Flutter since the "beginnng")',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Stack of widgets - making use of push() and pop()',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Navigator 2.0',
              extraTopSpacing: 4.0,
            ),
            SlideEnumerationEntry(
              text: 'Declarative approach',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'More advanced, more capabilities, more pain',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Stack of pages - depends on the app state',
              level: 1,
            ),
          ],
        )
      ],
    );
  }
}
