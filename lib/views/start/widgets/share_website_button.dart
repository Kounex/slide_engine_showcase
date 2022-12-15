import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../widgets/custom/atomic/social_block.dart';

class ShareWebsiteButton extends StatelessWidget {
  const ShareWebsiteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          title: SocialBlock(
            topPadding: 0,
            socialInfos: [
              SocialEntry(
                link: 'https://github.com/Kounex/slide_engine_showcase',
                linkText: 'Repository',
                icon: Ionicons.logo_github,
              ),
            ],
          ),
          contentPadding: const EdgeInsets.all(0),
          children: [
            Image.asset(
              'assets/images/qr_code.png',
              width: 350,
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      shape: CircleBorder(
        side: BorderSide(color: Theme.of(context).colorScheme.secondary),
      ),
      child: Icon(
        CupertinoIcons.share,
        color: Theme.of(context).colorScheme.onBackground,
      ),
    );
  }
}
