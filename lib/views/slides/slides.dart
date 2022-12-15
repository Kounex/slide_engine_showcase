import 'package:flutter/material.dart';
import 'package:slide_engine_showcase/views/slides/widgets/slides/components_1.dart';
import 'package:slide_engine_showcase/views/slides/widgets/slides/idea.dart';
import 'package:slide_engine_showcase/views/slides/widgets/slides/navigation_1.dart';
import 'package:slide_engine_showcase/views/slides/widgets/slides/possibilities.dart';
import 'package:slide_engine_showcase/views/slides/widgets/slides/slide_engine_title.dart';
import 'package:slide_engine_showcase/views/slides/widgets/slides/summary.dart';
import 'package:slide_engine_showcase/views/slides/widgets/slides/thank_you.dart';
import 'package:slide_engine_showcase/views/slides/widgets/slides/workshop_outcome.dart';

import '../../widgets/custom/composed/slide_scaffold/slide_scaffold.dart';
import 'widgets/slides/components_2.dart';
import 'widgets/slides/components_3.dart';
import 'widgets/slides/components_4.dart';
import 'widgets/slides/disclaimer.dart';
import 'widgets/slides/introduction.dart';
import 'widgets/slides/navigation_2.dart';
import 'widgets/slides/navigation_3.dart';
import 'widgets/slides/navigation_4.dart';
import 'widgets/slides/title.dart';
import 'widgets/slides/whats_next.dart';
import 'widgets/slides/workshop_reference.dart';
import 'widgets/slides/workshop_summary_1.dart';
import 'widgets/slides/workshop_summary_2.dart';

class SlidesView extends StatefulWidget {
  final int id;

  const SlidesView({
    super.key,
    this.id = 1,
  });

  @override
  State<SlidesView> createState() => _SlidesViewState();
}

class _SlidesViewState extends State<SlidesView> {
  late PageController _controller;

  final List<Slide> _slides = [
    const Slide(
      content: TitleSlide(),
    ),
    const Slide(
      content: IntroductionSlide(),
    ),
    const Slide(
      title: 'DISCLAIMER',
      content: DisclaimerSlide(),
    ),
    const Slide(
      content: WorkshopReferenceSlide(),
    ),
    const Slide(
      title: 'Workshop Summary',
      content: WorkshopSummary1Slide(),
    ),
    const Slide(
      title: 'Workshop Summary',
      content: WorkshopSummary2Slide(),
    ),
    const Slide(
      title: 'Workshop Outcome',
      content: WorkshopOutcomeSlide(),
    ),
    const Slide(
      content: SlideEngineTitleSlide(),
    ),
    const Slide(
      title: 'Idea',
      content: IdeaSlide(),
    ),
    const Slide(
      title: 'Components',
      content: Components1Slide(),
    ),
    const Slide(
      content: Components2Slide(),
    ),
    const Slide(
      content: Components3Slide(),
    ),
    const Slide(
      content: Components4Slide(),
    ),
    const Slide(
      title: 'Navigation',
      content: Navigation1Slide(),
    ),
    const Slide(
      content: Navigation2Slide(),
    ),
    const Slide(
      content: Navigation3Slide(),
    ),
    const Slide(
      content: Navigation4Slide(),
    ),
    const Slide(
      title: 'What\'s next',
      content: WhatsNextSlide(),
    ),
    const Slide(
      title: 'Summary',
      content: SummarySlide(),
    ),
    const Slide(
      content: PossibilitiesSlide(),
    ),
    const Slide(
      content: ThankYouSlide(),
    ),
  ];

  @override
  void initState() {
    super.initState();

    _controller = PageController(initialPage: widget.id - 1);
  }

  @override
  Widget build(BuildContext context) {
    return SlideScaffold(
      controller: _controller,
      slides: _slides,
      id: widget.id,
    );
  }
}
