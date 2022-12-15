import 'package:flutter/material.dart';
import 'package:slide_engine_showcase/views/slides/widgets/slides/title.dart';

import '../../widgets/custom/composed/slide_scaffold/slide_scaffold.dart';

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
