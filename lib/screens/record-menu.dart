import 'dart:io';

import 'package:bottom_bar_fab_flutter/styles/palette.dart';
import 'package:bottom_bar_fab_flutter/styles/text-styles.dart';
import 'package:flutter/material.dart';

import 'package:bottom_bar_fab_flutter/styles/icons.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(74.0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
          child: AppBar(
            backgroundColor: Palette.white,
            primary: true,
            brightness: Brightness.light,
            title: Text(
              'Menu',
              style: ItrisTextStyles.appBarMain,
            ),
            actions: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  IconButton(
                      icon: Icon(Icons.search),
                      iconSize: 24.0,
                      color: Palette.midnightBlue,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {}),
                ],
              ),
              SizedBox(
                width: 12.0,
              ),
            ],
            elevation: 0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(6, 0, 16, 0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Platform.isAndroid
                ? IconButton(
                    icon: Icon(MainIcons.home),
                    onPressed: null,
                  )
                : IconButton(
                    icon: Icon(Icons.home),
                    onPressed: null,
                  ),
            ListTile(
              leading: Icon(
                MainIcons.community,
                color: Palette.azureBlue,
              ),
              title: Text(
                'Applicants',
                style: ItrisTextStyles.bodyText,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Palette.lightGrey,
                size: 14,
              ),
            ),
            ListTile(
              leading: Icon(
                MainIcons.settings,
                color: Palette.bloodRed,
              ),
              title: Text(
                'Companies',
                style: ItrisTextStyles.bodyText,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Palette.lightGrey,
                size: 14,
              ),
            ),
            ListTile(
              leading: Icon(
                MainIcons.home,
                color: Palette.portlandOrange,
              ),
              title: Text(
                'Contacts',
                style: ItrisTextStyles.bodyText,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Palette.lightGrey,
                size: 14,
              ),
            ),
            ListTile(
              leading: Icon(
                MainIcons.records,
                color: Palette.phloxPurple,
              ),
              title: Text(
                'Jobs',
                style: ItrisTextStyles.bodyText,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Palette.lightGrey,
                size: 14,
              ),
            ),
            ListTile(
              leading: Icon(MainIcons.dashboard, color: Palette.basilGreen),
              title: Text(
                'Placements',
                style: ItrisTextStyles.bodyText,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Palette.lightGrey,
                size: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
