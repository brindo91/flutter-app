import 'package:flutter/material.dart';

class Palette {
//Greys
  static const Color huluGrey = Color(0xFF1F2023);
  static const Color charcoalGrey = Color(0xFF34404E);
  static const Color metalGrey = Color(0xFF97A7B9);
  static const Color aluminiumGrey = Color(0xFFBEC6CD);
  static const Color dustyGrey = Color(0xFFB7BCC1);
  static const Color lightGrey = Color(0xFFD9DFE6);
  static const Color transparentGrey = Color(0xFFB9B9B9);
  static const Color white = Color(0xFFFFFFFF);
  static const Color transparent = Color(0x00000000);

//Blues
  static const Color midnightBlue = Color(0xFF2D4760);
  static const Color oceanBlue = Color(0xFF496DC2);
  static const Color cobaltBlue = Color(0xFF537BDB);
  static const Color azureBlue = Color(0xFF6194FD);
  static const Color washedBlue = Color(0xFF83ABFD);
  static const Color lightBlue = Color(0xFFC0D4FE);
  static const Color aquaBlue = Color(0xFF48B6C4);

//Greens
  static const Color basilGreen = Color(0xFF4DC292);
  static const Color spanishGreen = Color(0xFF14A89A);

//Reds & Yellows
  static const Color bloodRed = Color(0xFFDC555C);
  static const Color portlandOrange = Color(0xFFFCA377);
  static const Color saffronYellow = Color(0xFFFBB755);

//Purples & Pinks
  static const Color phloxPurple = Color(0xFFAA71F8);
  static const Color mexicanPink = Color(0xFFD96FC9);
  static const Color lavendarPurple = Color(0xFFB879C8);
  static const Color mulberryPurple = Color(0xFFB768A2);
  static const Color grapefruitPink = Color(0xFFFF8188);
  static const Color salmonPink = Color(0xFFFF9EA3);

  //Social Media Brand Colours
  static const Color linkedin = Color(0xFFD96FC9);
  static const Color facebook = Color(0xFFB879C8);
  static const Color instagram = Color(0xFFB768A2);
  static const Color twitter = Color(0xFFFF9EA3);

  //Gradients
  static const LinearGradient pinkBlue = LinearGradient(
    colors: [Palette.grapefruitPink, Palette.azureBlue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
