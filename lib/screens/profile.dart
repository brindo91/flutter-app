import 'package:bottom_bar_fab_flutter/screens/configure.dart';
import 'package:bottom_bar_fab_flutter/styles/social-icons.dart';
import 'package:bottom_bar_fab_flutter/styles/palette.dart';
import 'package:bottom_bar_fab_flutter/styles/shadows.dart';
import 'package:bottom_bar_fab_flutter/styles/text-styles.dart';
import 'package:flutter/material.dart';

import 'package:bottom_bar_fab_flutter/styles/icons.dart';

class Profile extends StatelessWidget {
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
              'Profile',
              style: ItrisTextStyles.appBarMain,
            ),
            actions: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  IconButton(
                      icon: Icon(MainIcons.settings),
                      iconSize: 24.0,
                      color: Palette.midnightBlue,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfigureApp()),
                        );
                      }),
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
      body: Column(
        children: <Widget>[
          Container(
            child: Container(
                child: Stack(
              alignment: Alignment.topCenter,
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints.expand(height: 190.0),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1539199341299-c1ec572b41d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80'),
                  ),
                ),
                Positioned(
                  bottom: -75,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [Shadows.avatarShadow]),
                    child: Positioned(
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Palette.white,
                        child: CircleAvatar(
                          radius: 57,
                          backgroundImage: AssetImage('images/natalie.jpg'),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
          ),
          SizedBox(height: 100),
          Center(
            child: Text(
              'Natalie Virgo',
              style: ItrisTextStyles.profileName,
            ),
          ),
          SizedBox(height: 16),
          Center(
              child: Text(
            'Recruitment Consultant',
            style: ItrisTextStyles.profileJobTitle,
          )),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                constraints: BoxConstraints.tightFor(width: 34.0),
                child: Image.asset('images/linkedin.png'),
              ),
              SizedBox(width: 14),
              Container(
                constraints: BoxConstraints.tightFor(width: 34.0),
                child: Image.asset('images/facebook.png'),
              ),
              SizedBox(width: 14),
              Container(
                constraints: BoxConstraints.tightFor(width: 34.0),
                child: Image.asset('images/instagram.png'),
              ),
              SizedBox(width: 14),
              Container(
                constraints: BoxConstraints.tightFor(width: 34.0),
                child: Image.asset('images/twitter.png'),
              ),
            ],
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              color: Palette.dustyGrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 12),
                  Row(
                    children: <Widget>[
                      Text(
                        'EMAIL ADDRESS',
                        style: ItrisTextStyles.profileDataLabel,
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: <Widget>[
                      Text(
                        'natalie.virgo@metrik-global.com',
                        style: ItrisTextStyles.profileData,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: <Widget>[
                      Text(
                        'PHONE',
                        style: ItrisTextStyles.profileDataLabel,
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: <Widget>[
                      Text(
                        '+44 203 442 9909 (ext 1214)',
                        style: ItrisTextStyles.profileData,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: <Widget>[
                      Text(
                        'TEAM',
                        style: ItrisTextStyles.profileDataLabel,
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: <Widget>[
                      Text(
                        'Contract Team',
                        style: ItrisTextStyles.profileData,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
