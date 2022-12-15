import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideScale extends StatelessWidget {
  final void Function(double increment) changeScale;

  const SlideScale({super.key, required this.changeScale});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12.0),
        Card(
          margin: const EdgeInsets.all(0),
          child: Row(
            children: [
              IconButton(
                onPressed: () => changeScale(-0.1),
                icon: const Icon(CupertinoIcons.minus_circle),
              ),
              IconButton(
                onPressed: () => changeScale(0.1),
                icon: const Icon(CupertinoIcons.plus_circle),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
