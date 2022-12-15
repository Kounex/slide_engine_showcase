import 'dart:math';

import 'package:flutter/material.dart';

import '../../../base/card.dart';
import '../../../base/web_scaffold.dart';
import 'controls.dart';
import 'keyboard_listener.dart';
import 'number.dart';
import 'scale.dart';
import 'widgets/widget_slider.dart';

class Slide {
  final String? title;
  final Widget? content;

  const Slide({
    this.title,
    this.content,
  });
}

class SlideNumberPosition {
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;

  SlideNumberPosition({
    this.top,
    this.left,
    this.right,
    this.bottom,
  });
}

class SlideScaffold extends StatefulWidget {
  final int? id;
  final PageController? controller;
  final List<Slide> slides;

  final bool useDecoration;
  final List<Widget>? decorations;

  final SlideNumberPosition? position;

  const SlideScaffold({
    super.key,
    this.id,
    this.controller,
    required this.slides,
    this.useDecoration = true,
    this.decorations,
    this.position,
  });

  @override
  State<SlideScaffold> createState() => _SlideScaffoldState();
}

class _SlideScaffoldState extends State<SlideScaffold> {
  late int _id;
  late PageController _controller;

  double _slideScale = 1.0;

  @override
  void initState() {
    super.initState();

    _id = widget.id ?? 1;
    _controller = widget.controller ?? PageController(initialPage: _id - 1);
  }

  void _changeSlideScale(double increment) {
    setState(() => _slideScale += increment);
  }

  @override
  Widget build(BuildContext context) {
    return SlideKeyboardListener(
      controller: _controller,
      id: _id,
      amountSlides: widget.slides.length,
      child: Stack(
        alignment: Alignment.center,
        children: [
          WebScaffold(
            body: AnimatedScale(
              scale: _slideScale,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
              child: Center(
                child: BaseCard(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  decorations: [
                    if (widget.useDecoration)
                      ...widget.decorations ??
                          [
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Transform.rotate(
                                angle: pi / 3,
                                child: Transform.translate(
                                  offset: const Offset(150, 80),
                                  child: Container(
                                    width: 150.0,
                                    height: 250.0,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                    if (widget.slides.length > 1)
                      Positioned(
                        top: widget.position?.top,
                        left: widget.position?.left,
                        right: widget.position?.right ?? 32,
                        bottom: widget.position?.bottom ?? 18,
                        child: Builder(
                          builder: (context) {
                            return SlideNumber(
                              controller: _controller,
                              id: _id,
                            );
                          },
                        ),
                      ),
                  ],
                  child: SizedBox(
                    height: min(400, MediaQuery.of(context).size.height / 2),
                    child: PageView.builder(
                      controller: _controller,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: widget.slides.length,
                      itemBuilder: (context, index) => SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (widget.slides[index].title != null) ...[
                                Text(
                                  widget.slides[index].title!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .overline!
                                      .copyWith(
                                        fontSize: 32.0,
                                        letterSpacing: 2.0,
                                      ),
                                ),
                                const SizedBox(height: 6.0),
                                const Divider(height: 1),
                                const SizedBox(height: 12.0),
                              ],
                              Flexible(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: widget.slides[index].content ??
                                      const SizedBox(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (widget.slides.length > 1)
            Positioned(
              bottom: 0 +
                  MediaQuery.of(context).viewInsets.bottom +
                  MediaQuery.of(context).viewPadding.bottom,
              child: WidgetSlider(
                direction: ArrowDirection.up,
                child: SlideControls(
                  controller: _controller,
                  id: _id,
                  amountSlides: widget.slides.length,
                ),
              ),
            ),
          Positioned(
            top: 0,
            child: WidgetSlider(
              child: SlideScale(
                changeScale: _changeSlideScale,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
