import 'package:flutter/cupertino.dart';

import '../../podos/carousel_item.dart';
import 'carousel_widget.dart';

class Carousel extends StatelessWidget {
  final List<CarouselItem> items;

  const Carousel({
    required this.items
  });

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CarouselWidget(item: items[index]),
        ),
        scrollDirection: Axis.horizontal,
    );
  }


}