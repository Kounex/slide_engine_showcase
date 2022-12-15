import 'package:flutter/material.dart';
import 'package:slide_engine_showcase/widgets/custom/composed/slide_scaffold/widgets/slide_enumeration_block.dart';

class IdeaSlide extends StatelessWidget {
  const IdeaSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideEnumerationBlock(
          customEntries: [
            SlideEnumerationEntry(
              text:
                  'Programmatically create slides with the framework we all love so much',
            ),
            SlideEnumerationEntry(
              text: 'Available for other frameworks / languages as well',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Example: reveal.js',
              level: 1,
            ),
            SlideEnumerationEntry(
              extraTopSpacing: 4.0,
              text: 'Integrate Flutter widgets seamlessly into the slides',
            ),
            SlideEnumerationEntry(
              text: 'App of apps pattern possible',
            ),
            SlideEnumerationEntry(
              text: 'Possibility to adjust content dynamically',
            ),
          ],
        )
      ],
    );
  }
}
