import 'package:flutter/material.dart';

import '../../../../widgets/custom/composed/slide_scaffold/widgets/slide_enumeration_block.dart';

class IntroductionSlide extends StatelessWidget {
  const IntroductionSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SlideEnumerationBlock(
                    useEnumerationChar: false,
                    entries: [
                      'René Schramowski',
                      'Kounex',
                    ],
                  ),
                  SizedBox(height: 32.0),
                  SlideEnumerationBlock(
                    useEnumerationChar: false,
                    entries: [
                      'Solution Architect at Red Hat',
                      'Organisator of Flutter Hamburg (Flutter Meetup Network)',
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 24.0),
            ClipRRect(
              child: Container(
                width: 92,
                height: 92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/cropped.jpg',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24.0),
        const Divider(height: 1),
        const SizedBox(height: 32.0),
        const SlideEnumerationBlock(
          entries: [
            'Started with Swift, transitioned to Flutter (alpha / beta)',
            'Worked on security audits for mobile apps',
            'Open Source & Open Knowledge',
            'Love to talk about and explain stuff in a simple way',
            'Passion for Gaming and Badminton',
          ],
        ),
      ],
    );
  }
}
