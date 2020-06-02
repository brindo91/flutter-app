import 'package:flutter/material.dart';

import 'hub-item.dart';
import 'package:bottom_bar_fab_flutter/widgets/hub-item.dart';

class HubRunnerFavourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          HubItem(
            avatar: 'images/millie.jpg',
            name: 'Mille Howard',
          ),
          SizedBox(width: 8),
          HubItem(
            avatar: 'images/graham.jpg',
            name: 'Graham Carter',
          ),
          SizedBox(width: 8),
          HubItem(
            avatar: 'images/natalie.jpg',
            name: 'Natalie Virgo',
          ),
          SizedBox(width: 8),
          HubItem(
            avatar: 'images/olivia.jpg',
            name: 'Olivia Harvigg',
          ),
          HubItem(
            avatar: 'images/robert.jpg',
            name: 'Robert Reynolds',
          ),
        ],
      ),
    );
  }
}
