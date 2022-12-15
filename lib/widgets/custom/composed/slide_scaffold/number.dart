import 'package:flutter/material.dart';

class SlideNumber extends StatefulWidget {
  final PageController controller;
  final int id;

  const SlideNumber({
    super.key,
    required this.controller,
    required this.id,
  });

  @override
  State<SlideNumber> createState() => _SlideNumberState();
}

class _SlideNumberState extends State<SlideNumber> {
  late String _number;

  @override
  void initState() {
    super.initState();

    _number = (widget.controller.page?.round() ?? widget.id).toString();

    widget.controller.addListener(
      () {
        if (widget.controller.page != null) {
          if (int.tryParse(_number) != widget.controller.page!.round() + 1) {
            /// Oof that's dirty, maybe no one will notice 👀
            Future.delayed(
              const Duration(milliseconds: 100),
              () => setState(() =>
                  _number = (widget.controller.page!.round() + 1).toString()),
            );
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _number,
      style: TextStyle(
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}
