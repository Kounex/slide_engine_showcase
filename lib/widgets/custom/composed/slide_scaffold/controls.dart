import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'service.dart';

class SlideControls extends StatefulWidget {
  final PageController controller;

  final int id;

  final int amountSlides;

  const SlideControls({
    super.key,
    required this.controller,
    required this.id,
    required this.amountSlides,
  });

  @override
  State<SlideControls> createState() => _SlideControlsState();
}

class _SlideControlsState extends State<SlideControls> {
  late TextEditingController _page;

  @override
  void initState() {
    super.initState();

    _page = TextEditingController(
        text: (widget.controller.page ?? widget.id).toString());
    widget.controller.addListener(
      () {
        if (widget.controller.page != null) {
          if (int.tryParse(_page.text) != widget.controller.page!.round() + 1) {
            /// Oof that's dirty, maybe no one will notice 👀
            Future.delayed(
              const Duration(milliseconds: 100),
              () => setState(() => _page.text =
                  (widget.controller.page!.round() + 1).toString()),
            );
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.all(0),
          child: Row(
            children: [
              IconButton(
                onPressed: SlideService.animateToSlide(
                  context,
                  widget.controller,
                  widget.id,
                  widget.amountSlides,
                  to: SlideTo.start,
                ),
                icon: const Icon(CupertinoIcons.chevron_left_2),
              ),
              IconButton(
                onPressed: SlideService.animateToSlide(
                  context,
                  widget.controller,
                  widget.id,
                  widget.amountSlides,
                  to: SlideTo.prev,
                ),
                icon: const Icon(CupertinoIcons.chevron_left),
              ),
              const SizedBox(width: 12.0),
              SizedBox(
                width: 48.0,
                child: TextField(
                  controller: _page,
                  onSubmitted: (value) {
                    int? newSlide = int.tryParse(value);
                    VoidCallback? animateCallback = SlideService.animateToSlide(
                      context,
                      widget.controller,
                      widget.id,
                      widget.amountSlides,
                      toSlide: newSlide,
                    );
                    if (animateCallback != null) {
                      animateCallback();
                    } else {
                      _page.text = ((widget.controller.page?.toInt() ?? 0) + 1)
                          .toString();
                    }
                  },
                  textAlign: TextAlign.center,
                  maxLength: widget.amountSlides.toString().length,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    isDense: true,
                    counterText: '',
                    filled: true,
                  ),
                ),
              ),
              Text('  /  ${widget.amountSlides}'),
              const SizedBox(width: 12.0),
              IconButton(
                onPressed: SlideService.animateToSlide(
                  context,
                  widget.controller,
                  widget.id,
                  widget.amountSlides,
                  to: SlideTo.next,
                ),
                icon: const Icon(CupertinoIcons.chevron_right),
              ),
              IconButton(
                onPressed: SlideService.animateToSlide(
                  context,
                  widget.controller,
                  widget.id,
                  widget.amountSlides,
                  to: SlideTo.end,
                ),
                icon: const Icon(CupertinoIcons.chevron_right_2),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12.0),
      ],
    );
  }
}
