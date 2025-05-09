import 'package:draconian_utilities/dpi_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halen_demo/components/constant_style_widgets/constant_styled_widgets.dart';

import '../colors.dart';
import '../components/ride/checkout_footer.dart';
import '../components/ride/rideshare_bottom_sheet.dart';
import '../components/ride/rideshare_map.dart';

class BookARidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: DpiUtil.getPartialHeight(context, percentOf: .4),
            child: RideshareMap(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, top: 8),
            child: Container(
              height: 50,
              padding: EdgeInsets.only(top: 8),
              color: HalenColors.backgroundColor,
              child: ConstantStyledWidgets().getSelectRideText('Select your ride'),
            ),
          ),

          ///This should be implemented as a bottom-sheet; but for the sake of time...
          RideshareBottomSheet(),
          Spacer(),
          Align(alignment: Alignment.bottomCenter, child: CheckoutFooter()),
        ],
      ),
    );
  }
}
