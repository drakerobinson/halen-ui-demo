import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halen_demo/colors.dart';
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
    return Column(
      children: [
        Container(child: Text('Select your ride')),
        Padding(
          padding: const EdgeInsets.only(top: 36.0),
          child: TabBar(
            indicatorColor: HalenColors.primary,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 8,
            tabs: DataSpoofer().getFakeRideTabs(),
            controller: _tabController,
          ),
        ),
        TabBarView(controller: _tabController, children: [Container(), Container(), Container()]),
      ],
    );
  }
}
