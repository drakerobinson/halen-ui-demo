import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_auto_size_text/flutter_auto_size_text.dart';
import 'package:halen_demo/colors.dart';

class ConstantStyledWidgets {
  static const TextStyle titleStyle = TextStyle();
  static const TextStyle welcomeNameStyle = TextStyle(
    color: HalenColors.defaultTextColor,
    fontSize: 15,
  );
  static const TextStyle tabStyle = TextStyle(
    color: HalenColors.unfocusedTextWhite,
  );
  static const TextStyle focusedTabStyle = TextStyle(
    color: HalenColors.focusedTextWhite,
  );
  static const TextStyle homeTitleStyle = TextStyle(
    color: HalenColors.defaultTextColor,
    fontSize: 18,
    fontWeight: FontWeight.bold
  );
  static const TextStyle navBarStyle = TextStyle(
    color: HalenColors.bottomNavItemColor,
  );
  static const TextStyle eventDateStyle = TextStyle(
    fontSize: 14
  );
  static const TextStyle eventTitleStyle = TextStyle(
    fontSize: 18
  );

  ///should be data driven and encapsulated within the entire events feature
  AutoSizeText getHomeTitle(String text) {
    return AutoSizeText(text, style: homeTitleStyle);
  }

  AutoSizeText tabTitles(String text, {TextStyle? overrideStyle}) {
    return AutoSizeText(text, style: overrideStyle ?? tabStyle);
  }

  AutoSizeText getWelcomeNameText(String text) {
    return AutoSizeText(text, style: welcomeNameStyle);
  }

  AutoSizeText getEventDateText(String text) {
    return AutoSizeText(text, style: eventDateStyle,);
  }

  AutoSizeText getEventNameText(String text) {
    return AutoSizeText(text, style: eventTitleStyle, maxLines: 2,);
  }

}
