import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halen_demo/colors.dart';
import 'package:halen_demo/components/constant_style_widgets/constant_styled_widgets.dart';
import 'package:halen_demo/example_app_view_model.dart';
import 'package:provider/provider.dart';

import '../../pages/book_a_ride_page.dart';

class CategoryTabber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ExampleAppViewModel>(
      builder: (context, viewModel, _) => Container(
        height: 45,
        decoration: BoxDecoration(color: HalenColors.secondary),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BookARidePage()));},
                child: ConstantStyledWidgets().tabTitles('Ride', overrideStyle: viewModel.pageIndex == 0 ? ConstantStyledWidgets.focusedTabStyle: ConstantStyledWidgets.tabStyle)),
            GestureDetector(
                onTap: () {viewModel.updateSelectedTab(1);},
                child: ConstantStyledWidgets().tabTitles('Delivery', overrideStyle: viewModel.pageIndex == 1 ? ConstantStyledWidgets.focusedTabStyle: ConstantStyledWidgets.tabStyle)),
            GestureDetector(
                onTap: () {viewModel.updateSelectedTab(2);},
                child: ConstantStyledWidgets().tabTitles('Eats', overrideStyle: viewModel.pageIndex == 2 ? ConstantStyledWidgets.focusedTabStyle: ConstantStyledWidgets.tabStyle)),
            GestureDetector(
                onTap: () {viewModel.updateSelectedTab(3);},
                child: ConstantStyledWidgets().tabTitles('Flights', overrideStyle: viewModel.pageIndex == 3 ? ConstantStyledWidgets.focusedTabStyle: ConstantStyledWidgets.tabStyle)),
          ],
        ),
      ),
    );
  }
}
