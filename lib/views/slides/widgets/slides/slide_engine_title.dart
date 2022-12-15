import 'package:flutter/material.dart';

class SlideEngineTitleSlide extends StatelessWidget {
  const SlideEngineTitleSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 92.0),
        Text(
          'Slide Engine',
          style: Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(height: 4.0),
        const Divider(height: 1.0),
        const SizedBox(height: 12.0),
        const Text('Pretty much what you see right now'),
      ],
    );
  }
}
