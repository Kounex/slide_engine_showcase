import 'package:flutter/material.dart';

import '../../../utils/router.dart';
import '../../../widgets/base/card.dart';

class StartCard extends StatelessWidget {
  const StartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Flutter Hamburg 12/22',
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 102.0,
                child: ElevatedButton(
                  onPressed: () => RouterUtils.navigateTo(
                    context,
                    SlidesRoute(),
                  ),
                  child: const Text('Slides'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
