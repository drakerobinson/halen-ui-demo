import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halen_demo/components/constant_style_widgets/constant_styled_widgets.dart';

class CategoryTabber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(color: Colors.indigo),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
              onTap: () {},
              child: ConstantStyledWidgets().tabTitles('Ride')),
          GestureDetector(
              onTap: () {},
              child: ConstantStyledWidgets().tabTitles('Delivery')),
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
