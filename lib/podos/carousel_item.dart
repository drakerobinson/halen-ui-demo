import 'dart:ui';

class CarouselItem {
  String? header;
  String? formattedDate;
  String? backgroundUrl;
  Color? imageBorderColor;
  ///Depending on use of deeplinking, embedded web views, goRouter etc... this field would cover that use case depending on design and use case.
  String? intentUrl;
  bool isLocalAsset;

  CarouselItem({
    this.header,
    this.formattedDate,
    this.backgroundUrl,
    this.imageBorderColor,
    this.intentUrl,
    this.isLocalAsset = false,
  });

  ///Should add fromJson w/Code serialization; I would probably add another layer of abstraction between promotions and events (or other types) and just build out an adapter to merge them all
}