import 'package:flutter/material.dart';
import 'package:slide_engine_showcase/widgets/custom/composed/slide_scaffold/widgets/slide_enumeration_block.dart';

class WorkshopSummary1Slide extends StatelessWidget {
  const WorkshopSummary1Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideEnumerationBlock(
          customEntries: [
            SlideEnumerationEntry(text: 'What is navigation?'),
            SlideEnumerationEntry(
              text: 'Ability to change views / pages',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Change content based on context',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Why do we need navigation',
              extraTopSpacing: 4.0,
            ),
            SlideEnumerationEntry(
              text: 'Apps usually have too much content for one screen',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Group content into smaller bits, show on demand',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'How do you navigate in Flutter',
              extraTopSpacing: 4.0,
            ),
            SlideEnumerationEntry(
              text: 'Navigator.push( ... )',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Navigator.pop()',
              level: 1,
            ),
          ],
        ),
        const SizedBox(height: 24.0),
        const Text('Well, that\'s all you need to know - see ya!'),
      ],
    );
  }
}
