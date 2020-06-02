import 'package:bottom_bar_fab_flutter/styles/palette.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(

    //Provides the background colour to the main screens
    scaffoldBackgroundColor: Palette.white,

    //Provides the background colour to the bottom navigation bar
    bottomAppBarColor: Palette.white,

  );

    static final ThemeData darkTheme = ThemeData(

      //Provides the background colour to the main screens
      scaffoldBackgroundColor: Palette.midnightBlue,
      
  );
}