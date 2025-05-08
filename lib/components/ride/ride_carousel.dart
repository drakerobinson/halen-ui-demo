import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:halen_demo/colors.dart';
import 'package:halen_demo/components/ride/ride_option_card.dart';

class RideCarousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: SizedBox(
        height: 300,
        child: ListView(
         // shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
           RideOptionCard(
                capacityType: 'Small',
                price: '\$35.50',
                maxPersons: 4,
                estTime: '4 min',
              ),
            RideOptionCard(
              capacityType: 'Medium',
              price: '\$50.00',
              maxPersons: 4,
              estTime: '4 min',
            ),
            RideOptionCard(
              capacityType: 'Large',
              price: '\$150.43',
              maxPersons: 5,
              estTime: '5 min',
            )
          ],
        ),
      ),
    );
  }
}