import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halen_demo/colors.dart';
import 'package:halen_demo/components/constant_style_widgets/constant_styled_widgets.dart';

import '../../pages/book_a_ride_page.dart';

class CategoryTabber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(color: HalenColors.secondary),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BookARidePage()));},
              child: ConstantStyledWidgets().tabTitles('Ride')),
          GestureDetector(
              onTap: () {},
              child: ConstantStyledWidgets().tabTitles('Delivery', overrideStyle: ConstantStyledWidgets.focusedTabStyle)),
          GestureDetector(
              onTap: () {},
              child: ConstantStyledWidgets().tabTitles('Eats')),
          GestureDetector(
              onTap: () {},
              child: ConstantStyledWidgets().tabTitles('Flights')),
        ],
      ),
    );
  }
}
