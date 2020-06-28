
import 'package:flutter/material.dart';

class AppTheme {

  static const TextStyle display1 = TextStyle(
    color: Colors.black,
    fontSize: 38.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2
  );

  static const TextStyle display2 = TextStyle(
    color: Colors.black,
    fontSize: 32.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.1
  );

  static final TextStyle heading = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 34.0,
    color: Colors.white.withOpacity(0.8),
    letterSpacing: 1.2
  );

  static final TextStyle subheading = TextStyle(
    inherit: true,
    fontWeight: FontWeight.w500,
    fontSize: 24.0,
    color: Colors.white.withOpacity(0.8)
  );
}