import 'package:flutter/material.dart';
import 'package:slide_engine_showcase/widgets/custom/composed/slide_scaffold/widgets/slide_enumeration_block.dart';

class WorkshopOutcomeSlide extends StatelessWidget {
  const WorkshopOutcomeSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideEnumerationBlock(
          customEntries: [
            SlideEnumerationEntry(
              text: 'Both navigation appraoches are still viable',
            ),
            SlideEnumerationEntry(
              text: 'Flutter web pushed the need of Navigator 2.0',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Both can be used together',
              level: 1,
            ),
            SlideEnumerationEntry(
              extraTopSpacing: 4.0,
              text: 'Implementing the Navigator 2.0 API is quite complicated',
            ),
            SlideEnumerationEntry(
              text: 'With great power',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Comes great responsibility',
              level: 1,
            ),
            SlideEnumerationEntry(
              extraTopSpacing: 4.0,
              text: '"Official" package is go_router',
            ),
            SlideEnumerationEntry(
              text: 'Started by Chris Sells who worked at Google',
              level: 1,
            ),
            SlideEnumerationEntry(
              text:
                  'Solves most navigation challenges while enabling "web capabilities"',
              level: 1,
            ),
          ],
        )
      ],
    );
  }
}
