import 'dart:io' show Platform;

import 'package:bottom_bar_fab_flutter/styles/palette.dart';
import 'package:bottom_bar_fab_flutter/styles/text-styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:bottom_bar_fab_flutter/styles/icons.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(74.0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4, 12.0, 0, 0),
          child: AppBar(
            backgroundColor: Palette.white,
            primary: true,
            brightness: Brightness.light,
            title: Text(
              'Login',
              style: ItrisTextStyles.appBarMain,
            ),
            actions: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  IconButton(
                      icon: Icon(Icons.rotate_90_degrees_ccw),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                          radius: 72,
                          backgroundImage: AssetImage('images/natalie.jpg'),
                        ),
              SizedBox(height: 40),
              TextField(
                keyboardType: TextInputType.text,
                style: ItrisTextStyles.textFieldData,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Palette.lightGrey, width: 0.6),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Palette.azureBlue),
                  ),
                  labelText: 'USERNAME',
                  labelStyle: ItrisTextStyles.textFieldLabel,
                ),
              ),
              SizedBox(height: 24),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                style: ItrisTextStyles.textFieldData,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Palette.lightGrey, width: 0.6),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Palette.azureBlue),
                  ),
                  labelText: 'PASSWORD',
                  prefixStyle: ItrisTextStyles.textFieldData,
                  labelStyle: ItrisTextStyles.textFieldLabel,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            child: RaisedButton(
              splashColor: Colors.transparent,
              animationDuration: Duration(seconds: 0),
              highlightColor: Palette.cobaltBlue,
              highlightElevation: 0,
              onPressed: () => print('Connect button pressed'),
              elevation: 0,
              padding: EdgeInsets.all(14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: Palette.azureBlue,
              child: Text('Login', style: ItrisTextStyles.bigButtonCaption),
            ),
          ),
        ),
      ),
    );
  }
}