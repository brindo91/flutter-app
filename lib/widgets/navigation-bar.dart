import 'package:bottom_bar_fab_flutter/styles/palette.dart';
import 'package:bottom_bar_fab_flutter/styles/shadows.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({
    @required this.icons,
    @required this.onPressed,
    this.activeIndex,
    this.labels,
  }) : assert(icons != null);

  final List<IconData> icons;
  final List<String> labels;
  final Function(int) onPressed;
  final int activeIndex;

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [Shadows.navigationBarShadow],
          color: Palette.white,
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i = 0; i < widget.icons.length; i++)
              IconButton(
                iconSize: 20,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: Icon(widget.icons[i]),
                color: i == widget.activeIndex
                    ? Palette.azureBlue
                    : Palette.dustyGrey,
                onPressed: () => widget.onPressed(i),
              ),
          ],
        ));
  }
}
