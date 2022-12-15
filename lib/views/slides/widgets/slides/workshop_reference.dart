import 'package:flutter/material.dart';

import '../../../../widgets/custom/atomic/social_block.dart';
import '../../../../widgets/custom/composed/slide_scaffold/widgets/slide_enumeration_block.dart';

class WorkshopReferenceSlide extends StatelessWidget {
  const WorkshopReferenceSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    entries: [
                      'Based on the workshop "Go, Go, Router!" at DevFest 2022 Hamburg',
                      'Navigation fundamentals in Flutter',
                      'Navigator 1.0 vs. Navigator 2.0',
                      'go_router used for the slide deck engine'
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 24.0),
            Column(
              children: [
                Container(
                  width: 172,
                  height: 172,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/qr_code_workshop.png',
                      ),
                    ),
                  ),
                ),
                SocialBlock(
                  topPadding: 12.0,
                  socialInfos: [
                    SocialEntry(
                      link: 'https://devfest22.kounex.com',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 24.0),
        const Text('Source code for the workshop slides:'),
        SocialBlock(
          topPadding: 8.0,
          socialInfos: [
            SocialEntry(
              link: 'https://github.com/Kounex/go_go_router',
            ),
          ],
        ),
      ],
    );
  }
}
