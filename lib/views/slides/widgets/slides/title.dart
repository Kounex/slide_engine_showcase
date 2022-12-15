import 'package:flutter/material.dart';

class TitleSlide extends StatelessWidget {
  const TitleSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 72.0),
        Text(
          'Slide Deck with Navigator 2.0',
          style: Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(height: 4.0),
        const Divider(height: 1.0),
        const SizedBox(height: 12.0),
        const Text('Flutter Hamburg 12/22'),
      ],
    );
  }
}
