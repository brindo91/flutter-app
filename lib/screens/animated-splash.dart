import 'package:bottom_bar_fab_flutter/styles/palette.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimatedSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container(
        decoration: BoxDecoration(
          gradient: Palette.pinkBlue,
        ),
        child: Center(
          child: Lottie.asset('images/compass-animation.json',
              repeat: true,
              height: 240,
              width: 240,
              reverse: true),
        ),
      ),
    );
  }
}
