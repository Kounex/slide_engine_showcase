import 'package:flutter/material.dart';

import '../../../../widgets/custom/composed/slide_scaffold/widgets/slide_enumeration_block.dart';

class SummarySlide extends StatelessWidget {
  const SummarySlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideEnumerationBlock(
          customEntries: [
            SlideEnumerationEntry(
              text: 'Cons:',
            ),
            SlideEnumerationEntry(
              text:
                  'No visual builder (kinda nullifies the whole purpose though)',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'More tedious and easier to make errors',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Generally takes longer',
              level: 1,
            ),
            SlideEnumerationEntry(
              extraTopSpacing: 4.0,
              text: 'Pros:',
            ),
            SlideEnumerationEntry(
              text: 'Full layout control',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'All the form-factors - web, desktop, mobile',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Include widgets or whole apps as part of the slides',
              level: 1,
            ),
          ],
        )
      ],
    );
  }
}
