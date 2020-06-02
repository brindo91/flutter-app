import 'package:bottom_bar_fab_flutter/screens/applicant-hub.dart';
import 'package:bottom_bar_fab_flutter/styles/language.dart';
import 'package:bottom_bar_fab_flutter/styles/palette.dart';
import 'package:bottom_bar_fab_flutter/styles/text-styles.dart';
import 'package:bottom_bar_fab_flutter/widgets/onboard-item.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,

      //Transparent app bar with Skip button
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Palette.transparent,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 12, top: 24),
            child: FlatButton(
              splashColor: Palette.transparent,
              highlightColor: Palette.transparent,
              onPressed: () {
                print('Skipped');
              },
              child: Text(
                'Skip',
                style: ItrisTextStyles.skipButton,
              ),
            ),
          )
        ],
      ),

      //Scrollable page view
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          PageView(
            physics: ClampingScrollPhysics(),
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: <Widget>[
              onboardItem(
                  image: 'images/illustration.png',
                  title: TextConstants.onboardOrganiseTitle,
                  colour: Palette.azureBlue,
                  content: TextConstants.onboardOrganise),
              onboardItem(
                  image: 'images/illustration.png',
                  title: TextConstants.onboardSearchTitle,
                  colour: Palette.basilGreen,
                  content: TextConstants.onboardSearch),
              onboardItem(
                  image: 'images/illustration.png',
                  title: TextConstants.onboardTrackTitle,
                  colour: Palette.portlandOrange,
                  content: TextConstants.onboardTrack),
              onboardItem(
                  image: 'images/illustration.png',
                  title: TextConstants.onboardCollaborateTitle,
                  colour: Palette.phloxPurple,
                  content: TextConstants.onboardCollaborate),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 40, bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: WormEffect(
                    spacing: 6,
                    dotWidth: 8,
                    dotHeight: 8,
                    dotColor: Palette.lightGrey,
                    activeDotColor: Palette.azureBlue,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: FlatButton(
                    splashColor: Palette.transparent,
                    highlightColor: Palette.transparent,
                    onPressed: () {
                      print('Next');
                    },
                    child: Text(
                      'Next',
                      style: ItrisTextStyles.obCtaButton,
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(right: 12),
                //   child: FlatButton(
                //     splashColor: Palette.transparent,
                //     highlightColor: Palette.transparent,
                //     onPressed: () {
                //       print('Get Started');                    },
                //     child: Row(
                //       children: <Widget>[
                //         Text(
                //           'Get Started',
                //           style: ItrisTextStyles.obCtaButton,
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 4, top: 2),
                //           child: Icon(Icons.arrow_forward, size: 18, color: Palette.midnightBlue,),
                //         ),
                //       ],
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
  
