import 'package:flutter/material.dart';

class ThemeUtils {
  static ThemeData get base => ThemeData.from(
        colorScheme: const ColorScheme.dark(
          primary: Color.fromARGB(255, 1, 105, 206),
          secondary: Color.fromARGB(255, 1, 105, 206),
        ),
      );
}
