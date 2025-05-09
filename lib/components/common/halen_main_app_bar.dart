import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halen_demo/colors.dart';
import 'package:halen_demo/components/constant_style_widgets/constant_styled_widgets.dart';

import 'home_page_search_bar.dart';

class HalenMainAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HalenColors.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 24),
              child: ConstantStyledWidgets().getWelcomeNameText('Hi, Michael'),
            ),
           Padding(
             padding: const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 12),
             child: HomePageSearchBar(),
           ),
          ],
      ),
    );
  }

}