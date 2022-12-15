import 'package:flutter/material.dart';
import 'package:slide_engine_showcase/views/start/widgets/background_video.dart';
import 'package:slide_engine_showcase/views/start/widgets/share_website_button.dart';
import 'package:slide_engine_showcase/views/start/widgets/start_card.dart';

import '../../widgets/base/web_scaffold.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return WebScaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        alignment: Alignment.center,
        children: const [
          BackgroundVideo(
            videoURL: 'https://assets.kounex.com/videos/christmas.mp4',
          ),
          StartCard(),
          Positioned(
            top: 24.0,
            right: 24.0,
            child: ShareWebsiteButton(),
          ),
        ],
      ),
    );
  }
}
