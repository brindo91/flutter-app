import 'package:bottom_bar_fab_flutter/widgets/navigation-bar.dart';
import 'package:bottom_bar_fab_flutter/screens/applicant-hub.dart';
import 'package:bottom_bar_fab_flutter/screens/community.dart';
import 'package:bottom_bar_fab_flutter/screens/profile.dart';
import 'package:bottom_bar_fab_flutter/screens/record-menu.dart';
import 'package:bottom_bar_fab_flutter/styles/palette.dart';
import 'package:flutter/material.dart';
import 'package:bottom_bar_fab_flutter/styles/icons.dart';
import 'animated-splash.dart';
import 'dashboard.dart';
import 'home-page.dart';
import 'onboard.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int navIndex = 0;

  final List<Widget> pages = [
    Onboarding(),
    AnimatedSplash(),
    MainMenu(),
    ApplicantHub(),
    Profile(),
  ];

  final icons = List<IconData>.unmodifiable([
    MainIcons.home,
    MainIcons.community,
    MainIcons.records,
    MainIcons.dashboard,
    MainIcons.settings
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: pages[navIndex],
      bottomNavigationBar: NavigationBar(
        icons: icons,
        onPressed: (i) => setState(() => navIndex = i),
        activeIndex: navIndex,
      ),
    );
  }
}
