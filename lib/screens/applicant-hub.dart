import 'dart:io' show Platform;

import 'package:bottom_bar_fab_flutter/styles/palette.dart';
import 'package:bottom_bar_fab_flutter/styles/text-styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:bottom_bar_fab_flutter/widgets/hub-favourite.dart';
import 'package:bottom_bar_fab_flutter/widgets/hub-runner-recent.dart';
import 'package:bottom_bar_fab_flutter/styles/icons.dart';

class ApplicantHub extends StatefulWidget {
  @override
  _ApplicantHubState createState() => _ApplicantHubState();
}

class _ApplicantHubState extends State<ApplicantHub> {
  bool val = false;
  onSwitchValueChanged(bool newVal) {
    setState(() {
      val = newVal;
    });
  }

  void _selectedTab(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(74),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
          child: AppBar(
            backgroundColor: Palette.white,
            leading: Icon(
              Icons.menu,
              color: Palette.midnightBlue,
            ),
            centerTitle: true,
            primary: true,
            brightness: Brightness.light,
            title: Text(
              'Companies',
              style: ItrisTextStyles.appBarCentre,
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  iconSize: 24,
                  color: Palette.midnightBlue,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    print('menu pressed');
                  }),
              SizedBox(
                width: 12,
              ),
            ],
            elevation: 0,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('Show recently opened',
                    style: ItrisTextStyles.bodyText,),
                    Spacer(),
                    Container(
                        child: Switch.adaptive(
                                value: val,
                                activeColor: Palette.azureBlue,
                                onChanged: (newVal) {
                                  onSwitchValueChanged(newVal);
                                }),
                                ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'RECENTLY OPENED',
              style: ItrisTextStyles.hubRunnerHeader,
            ),
          ),
          HubRunnerRecent(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'FAVOURITES',
              style: ItrisTextStyles.hubRunnerHeader,
            ),
          ),
          HubRunnerFavourite(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'VALUABLE APPLICANTS',
              style: ItrisTextStyles.hubRunnerHeader,
            ),
          ),
          HubRunnerRecent(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'RECENTLY REGISTERED',
              style: ItrisTextStyles.hubRunnerHeader,
            ),
          ),
          HubRunnerRecent(),
        ],
      ),
    );
  }
}
