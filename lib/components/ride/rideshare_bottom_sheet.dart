import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halen_demo/colors.dart';
import 'package:halen_demo/components/constant_style_widgets/constant_styled_widgets.dart';
import 'package:halen_demo/components/ride/ride_carousel.dart';
import 'package:halen_demo/spoof_services/data_spoofer.dart';

class RideshareBottomSheet extends StatefulWidget {
  @override
  State<RideshareBottomSheet> createState() => _RideshareBottomSheetState();
}

class _RideshareBottomSheetState extends State<RideshareBottomSheet>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          TabBar(
            indicatorColor: HalenColors.tabDarkColor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 8,
            dividerHeight: 5,
            tabs: DataSpoofer().getFakeRideTabs(),
            labelColor: HalenColors.tabDarkColor,
            labelStyle: ConstantStyledWidgets.rideTabStyle,
            controller: _tabController,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .325,
            child: TabBarView(
              controller: _tabController,
              children: [getRides(), getRides(), getRides()],
            ),
          ),
        ],
      ),
    );
  }

  getRides() {
    return RideCarousel();
  }
}
