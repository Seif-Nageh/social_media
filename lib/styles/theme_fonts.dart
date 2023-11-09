import 'package:flutter/material.dart';

class ThemeFonts {
  static const double _bodyFirstFontSize = 16.0;
  static const double _bodySecondFontSize = 14.0;
  static const headerFirst = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w900,
  );

  static const headerSecond = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static const subtitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static const bodyFirst = TextStyle(
    fontSize: _bodyFirstFontSize,
    fontWeight: FontWeight.normal,
  );

  static const bodyFirstSemibold = TextStyle(
    fontSize: _bodyFirstFontSize,
    fontWeight: FontWeight.w600,
  );

  static const bodyFirstMedium = TextStyle(
    fontSize: _bodyFirstFontSize,
    fontWeight: FontWeight.w500,
  );

  static const bodySecond = TextStyle(
    fontSize: _bodySecondFontSize,
    fontWeight: FontWeight.normal,
  );

  static const bodySecondMedium = TextStyle(
    fontSize: _bodySecondFontSize,
    fontWeight: FontWeight.w500,
  );

  static const bodySecondUnderline = TextStyle(
    fontSize: _bodySecondFontSize,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.italic,
  );
}
