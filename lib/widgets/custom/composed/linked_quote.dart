import 'package:flutter/widgets.dart';

import '../atomic/social_block.dart';

class LinkedQuote extends StatelessWidget {
  final String quote;

  final String link;
  final String? linkText;

  const LinkedQuote({
    super.key,
    required this.quote,
    required this.link,
    this.linkText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '"$quote"',
          style: const TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
        Row(
          children: [
            const SizedBox(width: 12.0),
            const Text(
              '-',
              style: TextStyle(
                fontSize: 8.0,
              ),
            ),
            const SizedBox(width: 4.0),
            SocialBlock(
              topPadding: 0,
              bottomPadding: 0,
              socialInfos: [
                SocialEntry(
                  link: link,
                  linkText: linkText,
                  textStyle: const TextStyle(
                    fontSize: 8.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
