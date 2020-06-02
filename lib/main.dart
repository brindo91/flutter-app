import 'package:bottom_bar_fab_flutter/screens/animated-splash.dart';
import 'package:bottom_bar_fab_flutter/screens/applicant-hub.dart';
import 'package:bottom_bar_fab_flutter/screens/configure.dart';
import 'package:bottom_bar_fab_flutter/screens/login.dart';
import 'package:bottom_bar_fab_flutter/screens/profile.dart';
import 'package:bottom_bar_fab_flutter/screens/record-menu.dart';
import 'package:bottom_bar_fab_flutter/screens/selected-page.dart';
import 'package:bottom_bar_fab_flutter/styles/palette.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bottom_bar_fab_flutter/screens/onboard.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Onboarding(),
      home: MyPage(),
      //home: ApplicantHub(),
      //home: Profile(),
      //home: AnimatedSplash(),
      //home: ConfigureApp(),
      //home: MainMenu(),
    );
  }
}