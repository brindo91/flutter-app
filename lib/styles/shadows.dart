import 'package:bottom_bar_fab_flutter/styles/palette.dart';
import 'package:flutter/material.dart';

class Shadows {
  static BoxShadow avatarShadow = BoxShadow(
    color: Palette.transparentGrey.withOpacity(0.6),
    spreadRadius: 2,
    blurRadius: 12,
    offset: Offset(0, 8),
  );

  static BoxShadow navigationBarShadow = BoxShadow(
    color: Palette.transparentGrey.withOpacity(0.6),
    spreadRadius: 4,
    blurRadius: 12,
    offset: Offset(0, 12),
  );

}