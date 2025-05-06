class CarouselItem {
  String? header;
  String? formattedDate;
  String? backgroundUrl;
  ///Depending on use of deeplinking, embedded web views, etc... this field would cover that use case depending on design and use case.
  String? intentUrl;

  CarouselItem({
    this.header,
    this.formattedDate,
    this.backgroundUrl,
    this.intentUrl,
  });

  ///Should add fromJson w/Code serialization; I would probably add another layer of abstraction between promotions and events (or other types) and just build out an adapter to merge them all
}