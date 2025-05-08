import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/ride/rideshare_bottom_sheet.dart';
import '../components/ride/rideshare_map.dart';

class BookARidePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .4, child: RideshareMap(),
         ),
          ///This should be implemented as a bottom-sheet; but for the sake of time...
          SizedBox(height: MediaQuery.of(context).size.height * .6, child: RideshareBottomSheet())
        ],
      ),
    );
  }
}