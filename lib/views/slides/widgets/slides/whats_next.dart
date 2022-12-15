import 'package:flutter/material.dart';

import '../../../../widgets/custom/composed/slide_scaffold/widgets/slide_enumeration_block.dart';

class WhatsNextSlide extends StatelessWidget {
  const WhatsNextSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideEnumerationBlock(
          customEntries: [
            SlideEnumerationEntry(
              text: 'Various animation possibilities',
            ),
            SlideEnumerationEntry(
              text: 'Common predefined layouts',
            ),
            SlideEnumerationEntry(
              text: 'Better autoscaling to fit the available screen size',
            ),
            SlideEnumerationEntry(
              text: 'Fullscreen mode',
            ),
            SlideEnumerationEntry(
              text: 'Video capabilities',
            ),
            SlideEnumerationEntry(
              text: 'Different slide directions',
            ),
            SlideEnumerationEntry(
              text: '...',
            ),
          ],
        )
      ],
    );
  }
}
