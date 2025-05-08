import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halen_demo/colors.dart';

class RideOptionCard extends StatelessWidget {
  ///This should be an enum; also all of this should be populated via data
  final String capacityType;
  final String price;
  final int maxPersons;
  final String estTime;

  RideOptionCard({
    required this.capacityType,
    required this.price,
    required this.maxPersons,
    required this.estTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 160,
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: HalenColors.tabDarkColor, width: 2),
            borderRadius: BorderRadius.circular(4),
          ),
          child: ClipRect(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ColorFiltered(
                colorFilter:
                    price == '\$35.50'
                        ? ColorFilter.mode(
                          HalenColors.primary.withOpacity(.35),
                          BlendMode.overlay,
                        )
                        : ColorFilter.mode(Colors.transparent, BlendMode.srcOver),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 65),
                    SizedBox(
                      height: 75,
                      width: 75,
                      child: SvgPicture.asset('assets/car_asset.svg'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(capacityType, style: TextStyle(color: HalenColors.tabDarkColor, fontSize: 20, fontWeight: FontWeight.bold),),
                        Spacer(),
                        if (price == '\$35.50') Icon(Icons.check),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(price, style: TextStyle(color: HalenColors.tabDarkColor, fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [getPersonsCount(), Spacer(), getEstTime()],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///All of this should be converted to classes
  getPersonsCount() {
    return Row(children: [Icon(Icons.person, color: HalenColors.iconGreen,), Text(maxPersons.toString())]);
  }

  getEstTime() {
    return Row(children: [Icon(Icons.av_timer_rounded, color: HalenColors.iconGreen,)]);
  }
}
