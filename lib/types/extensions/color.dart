import 'package:flutter/material.dart';

extension ColorBasics on Color {
  Color blackWhite() => computeLuminance() <= 0.2 ? Colors.white : Colors.black;
}
