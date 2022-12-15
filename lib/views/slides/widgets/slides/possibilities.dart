import 'package:flutter/material.dart';

import '../../../../widgets/custom/composed/slide_scaffold/widgets/widget_slider.dart';

class HiCard extends StatelessWidget {
  const HiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      color: Colors.red[900],
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Text('Hi'),
      ),
    );
  }
}

class PossibilitiesSlide extends StatelessWidget {
  const PossibilitiesSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      height: 300.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const WidgetSlider(
            child: HiCard(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              WidgetSlider(
                direction: ArrowDirection.right,
                child: HiCard(),
              ),
              WidgetSlider(
                direction: ArrowDirection.left,
                child: HiCard(),
              ),
            ],
          ),
          const WidgetSlider(
            direction: ArrowDirection.up,
            child: HiCard(),
          ),
        ],
      ),
    );
  }
}
