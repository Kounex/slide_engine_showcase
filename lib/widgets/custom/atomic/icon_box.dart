import 'package:flutter/material.dart';

import '../../../types/extensions/color.dart';

class IconBox extends StatelessWidget {
  final IconData icon;
  final double? size;

  final Color? color;

  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const IconBox({
    super.key,
    required this.icon,
    this.size,
    this.color,
    this.margin,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(18.0),
      padding: padding ?? const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Icon(
        icon,
        size: size ?? 36.0,
        color: color?.blackWhite() ?? Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}
