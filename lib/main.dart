import 'package:flutter/material.dart';
import 'package:halen_demo/colors.dart';
import 'package:halen_demo/components/common/bottom_navigation_bar.dart';
import 'package:halen_demo/components/common/category_tabber.dart';
import 'package:halen_demo/components/constant_style_widgets/constant_styled_widgets.dart';
import 'package:halen_demo/components/home/carousel.dart';
import 'package:halen_demo/spoof_services/data_spoofer.dart';

import 'components/common/halen_main_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  ///this would be implemented as a page view, with the CategoryTabber & bottom nav bar controlling its contents
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HalenColors.backgroundColor,
      appBar: PreferredSize(preferredSize: Size.fromHeight(125), child: HalenMainAppBar()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoryTabber(),
            SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                   SizedBox(
                     height: 185,
                    child: Carousel(items: DataSpoofer().getFakePromotions()),
                  ),
                  Align(alignment: Alignment.centerLeft, child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 16, bottom: 4),
                    child: ConstantStyledWidgets().getHomeTitle('What\'s going on in your community?'),
                  )),
                  SizedBox(
                    height: 350,
                    child: Carousel(items: DataSpoofer().getFakeEvents()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: HalenBottomNavBar(),
    );
  }
}
