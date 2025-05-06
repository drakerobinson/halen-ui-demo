import 'package:flutter/material.dart';
import 'package:halen_demo/spoof_services/data_spoofer.dart';

class HalenBottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: DataSpoofer().getFakeBottomNavBarItems(),
      backgroundColor: Colors.white,
    );
  }
}