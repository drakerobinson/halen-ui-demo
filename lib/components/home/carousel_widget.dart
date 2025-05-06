import 'package:flutter/material.dart';
import 'package:halen_demo/podos/carousel_item.dart';

class CarouselWidget extends StatelessWidget {

  final CarouselItem item;

  const CarouselWidget({super.key, required this.item});


  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(constraints: BoxConstraints(maxHeight: 250, maxWidth: 400),
    child: item.header != null ? getEventCard() : getIntentCard());
  }

  Widget getIntentCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.network(item.backgroundUrl ?? ''),

      ),
    );
  }

  Card getEventCard() {
    return Card(
      child: Column(
        children: [
          Image.network(item.backgroundUrl ?? ''),
          Text(item.formattedDate ?? ''),
          Text(item.header ?? '')
      ],),
    );
  }

}