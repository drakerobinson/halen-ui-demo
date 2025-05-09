import 'package:draconian_utilities/dpi_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:halen_demo/example_app_view_model.dart';
import 'package:provider/provider.dart';

import '../../spoof_services/data_spoofer.dart';
import '../constant_style_widgets/constant_styled_widgets.dart';
import 'carousel.dart';

class PageViewHandler extends StatefulWidget {

  @override
  State<PageViewHandler> createState() => _PageViewHandlerState();
}

class _PageViewHandlerState extends State<PageViewHandler> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ExampleAppViewModel>(builder: (context, viewModel, _) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if(viewModel.pageIndex != _pageController.page?.floor()) {
          _pageController.animateToPage(viewModel.pageIndex, duration: Duration(microseconds: 3), curve: Curves.ease);
        }
      });
      return PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          SizedBox(height: 5,),
          getDeliveryContents(context),
          getEatsContents(context),
          getFlightsContents(context),
        ],
      );
    });
  }

  ///All of these pages should be their own widgets
  getDeliveryContents(BuildContext context) {
    return SizedBox(
      height: DpiUtil.getPartialHeight(context, percentOf: .5),
      width: DpiUtil.getWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 185,
            child: Carousel(items: DataSpoofer().getFakePromotions()),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
                top: 16,
                bottom: 4,
              ),
              child: ConstantStyledWidgets().getHomeTitle(
                'What\'s going on in your community?',
              ),
            ),
          ),
          SizedBox(
            height: 350,
            child: Carousel(items: DataSpoofer().getFakeEvents()),
          ),
        ],
      ),
    );
  }

  getEatsContents(BuildContext context) {
    return Image.asset('assets/images/eats.png');
  }

  getFlightsContents(BuildContext context) {
    return Image.asset('assets/images/airplane.png');
  }
}
