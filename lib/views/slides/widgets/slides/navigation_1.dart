import 'package:flutter/material.dart';
import 'package:slide_engine_showcase/utils/router.dart';
import 'package:slide_engine_showcase/widgets/custom/composed/slide_scaffold/widgets/slide_enumeration_block.dart';

class Navigation1Slide extends StatelessWidget {
  const Navigation1Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideEnumerationBlock(
          customEntries: [
            SlideEnumerationEntry(
              text: 'URL coupled with shown slide',
            ),
            SlideEnumerationEntry(
              text: '/slides/:<param>',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: '<param> represents which slide we are on ',
              level: 1,
            ),
            SlideEnumerationEntry(
              extraTopSpacing: 4.0,
              text: 'Persistant elements',
            ),
            SlideEnumerationEntry(
              text: 'Home button unaffected of inner navigation',
              level: 1,
            ),
            SlideEnumerationEntry(
              extraTopSpacing: 4.0,
              text: 'Correct stack of views / pages',
            ),
            SlideEnumerationEntry(
              text: 'Tab titles!',
            ),
          ],
        ),
        const SizedBox(height: 12.0),
        ElevatedButton(
          onPressed: () => RouterUtils.navigateTo(
            context,
            SlidesDetailsRoute(context),
          ),
          child: const Text('Navigate!'),
        ),
      ],
    );
  }
}
