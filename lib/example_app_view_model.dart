import 'package:flutter/cupertino.dart';

class ExampleAppViewModel extends ChangeNotifier {

  int pageIndex = 1;
  int bottomNavIndex = 0;

  void updateSelectedTab(int index) {
    pageIndex = index;
    notifyListeners();
  }

  void updateBottomNavIndex(int index) {
    bottomNavIndex = index;
    notifyListeners();
  }

}