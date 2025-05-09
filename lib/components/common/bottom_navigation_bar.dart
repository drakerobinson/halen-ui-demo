import 'package:flutter/material.dart';
import 'package:halen_demo/components/constant_style_widgets/constant_styled_widgets.dart';
import 'package:halen_demo/example_app_view_model.dart';
import 'package:halen_demo/spoof_services/data_spoofer.dart';
import 'package:provider/provider.dart';

class HalenBottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<ExampleAppViewModel>(
      builder: (context, viewModel, _) => BottomNavigationBar(
        currentIndex: viewModel.bottomNavIndex,
        onTap: ((newIndex) => viewModel.updateBottomNavIndex(newIndex)),
        elevation: 24,
        ///this value should be defined from a data-source; especially if we want it to potentially support additional layouts
        items: DataSpoofer().getFakeBottomNavBarItems(),
        backgroundColor: Colors.white,
        unselectedLabelStyle: ConstantStyledWidgets.navBarStyle,
        selectedLabelStyle: ConstantStyledWidgets.navBarStyle,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}