import 'dart:ui';

import 'package:flutter/material.dart';

class ConstantStyledWidgets {

  TextStyle titleStyle = TextStyle();
  TextStyle tabStyle = TextStyle();
  TextStyle homeTitleStyle = TextStyle(
    color: Colors.indigo,
    fontSize: 16
  );
  TextStyle navBarStyle = TextStyle();

  ///should be data driven and encapsulated within the entire events feature
  Text getHomeTitle(String text) {
    return Text(
      text,
      style: homeTitleStyle,
    );
  }

  Text tabTitles(String text) {
    return Text(
      text,
      style: tabStyle,
    );
  }

}