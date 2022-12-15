import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'service.dart';

class SlideKeyboardListener extends StatelessWidget {
  final PageController controller;
  final int id;
  final int amountSlides;
  final Widget child;

  const SlideKeyboardListener({
    super.key,
    required this.controller,
    required this.id,
    required this.amountSlides,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      focusNode: FocusNode(),
      onKeyEvent: (event) {
        if (event is KeyRepeatEvent || event is KeyDownEvent) {
          if (event.logicalKey.keyLabel == 'Arrow Left' ||
              event.logicalKey.keyLabel == 'Page Up') {
            SlideService.animateToSlide(
              context,
              controller,
              id,
              amountSlides,
              to: SlideTo.prev,
            )?.call();
          } else if (event.logicalKey.keyLabel == 'Arrow Right' ||
              event.logicalKey.keyLabel == 'Page Down') {
            SlideService.animateToSlide(
              context,
              controller,
              id,
              amountSlides,
              to: SlideTo.next,
            )?.call();
          }
        }
      },
      child: child,
    );
  }
}
