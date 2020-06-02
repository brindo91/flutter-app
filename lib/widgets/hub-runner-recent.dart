import 'package:flutter/material.dart';
import 'hub-item.dart';

class HubRunnerRecent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          HubItem(
            avatar: 'images/aaron.jpg',
            name: 'Aaron Sudekis',
          ),
          SizedBox(width: 8),
          HubItem(
            avatar: 'images/olivia.jpg',
            name: 'Olivia Harvigg',
          ),
          SizedBox(width: 8),
          HubItem(
            avatar: 'images/craig.jpg',
            name: 'Craig Thomas',
          ),
          SizedBox(width: 8),
          HubItem(
            avatar: 'images/millie.jpg',
            name: 'Millie Howard',
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
