import 'package:bottom_bar_fab_flutter/styles/palette.dart';
import 'package:bottom_bar_fab_flutter/styles/text-styles.dart';
import 'package:flutter/material.dart';

import 'hub-button.dart';

class HubItem extends StatelessWidget {
  final String avatar;
  final String name;

  const HubItem({this.avatar, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        title: Image.asset(avatar),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                name,
                style: ItrisTextStyles.hubItemTitle,
              )),
        ),
      ),
    );
  }
}