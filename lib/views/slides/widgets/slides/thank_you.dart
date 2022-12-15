import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../widgets/custom/atomic/social_block.dart';

class ThankYouSlide extends StatelessWidget {
  const ThankYouSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 64.0),
        Text(
          'Thank You!',
          style: Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(height: 12.0),
        const Divider(height: 1),
        const SizedBox(height: 12.0),
        SocialBlock(
          socialInfos: [
            SocialEntry(
              icon: Ionicons.cafe_outline,
              linkText: 'Flutter Hamburg',
              link: 'https://www.meetup.com/de-DE/flutter-meetup-hamburg/',
            ),
            SocialEntry(
              icon: Ionicons.logo_github,
              linkText: 'Kounex',
              link: 'https://github.com/Kounex',
            ),
            SocialEntry(
              icon: Ionicons.logo_twitter,
              linkText: '@Kounexx',
              link: 'https://twitter.com/Kounexx',
            ),
            SocialEntry(
              icon: Ionicons.logo_linkedin,
              linkText: 'René Schramowski',
              link:
                  'https://www.linkedin.com/in/ren%C3%A9-schramowski-a35342157/',
            ),
            SocialEntry(
              icon: Ionicons.logo_mastodon,
              linkText: '@kounex@hachyderm.io',
              link: 'https://hachyderm.io/@kounex',
            ),
          ],
        )
      ],
    );
  }
}
