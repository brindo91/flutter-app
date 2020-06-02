import 'package:bottom_bar_fab_flutter/styles/palette.dart';
import 'package:flutter/material.dart';

Widget onboardItem(
  {
  @required image,
  @required title,
  @required content,
  @required colour}) 
  
  {return Container(
    padding: EdgeInsets.only(left: 40, right: 40, bottom: 60),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Image.asset(image),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 50,
              child: Stack(
                alignment: Alignment.bottomCenter,
                overflow: Overflow.visible,
                children: <Widget>[
                  Positioned(
                    left: -4,
                    bottom: -5,
                    child: Opacity(
                      opacity: 0.16,
                      child: Text(
                        title.toUpperCase(),
                        style: TextStyle(
                            fontSize: 36,
                            color: colour,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        title.toUpperCase(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20,
                            color: colour,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: Text(
                content,
                style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    fontWeight: FontWeight.w300,
                    color: Palette.metalGrey),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
