import 'package:flutter/material.dart';
import 'package:halen_demo/components/constant_style_widgets/constant_styled_widgets.dart';
import 'package:halen_demo/podos/carousel_item.dart';
import 'package:url_launcher/url_launcher.dart';

class CarouselWidget extends StatelessWidget {
  final CarouselItem item;

  const CarouselWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return item.header != null ? getEventCard() : getIntentCard();
  }

  Widget getIntentCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: GestureDetector(
        onTap: () async {
          if (item.intentUrl != null) {
            await launchUrl(Uri.parse(item.intentUrl!));
          }
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: item.isLocalAsset ? Image.asset(
            item.backgroundUrl!, fit: BoxFit.fill,) : Image.network(
              item.backgroundUrl ?? ''),
        ),
      ),
    );
  }

  Widget getEventCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      clipBehavior: Clip.hardEdge,
      width: 200,
      child: Card(
        child: Column(
          children: [
            SizedBox(
              height: 225,
              child: Image.network(item.backgroundUrl ?? '', fit: BoxFit.fill),
            ),
            Container(height: 7.5, color: item.imageBorderColor),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ConstantStyledWidgets().getEventDateText(
                    item.formattedDate ?? '',
                  ),
                  ConstantStyledWidgets().getEventNameText(item.header ?? ''),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
