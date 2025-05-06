import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halen_demo/podos/carousel_item.dart';

class DataSpoofer {
  List<CarouselItem> getFakeEvents() => [
    CarouselItem(header: 'Carmichael Farmer Market', backgroundUrl: 'https://picsum.photos/200', formattedDate: 'Sun, May 3'),
    CarouselItem(header: 'Concert at the Park', backgroundUrl: 'https://picsum.photos/200', formattedDate: 'Sat, May 10'),
    CarouselItem(header: 'Carmichael Farmer Market', backgroundUrl: 'https://picsum.photos/200', formattedDate: 'Sun, May 18'),
    CarouselItem(header: 'Famous Dave\'s park barbeque!', backgroundUrl: 'https://picsum.photos/200', formattedDate: 'Thu, May 22'),
  ];

  List<CarouselItem> getFakePromotions() => [
    CarouselItem(backgroundUrl: 'https://picsum.photos/400/200', intentUrl: ''),
    CarouselItem(backgroundUrl: 'https://picsum.photos/400/200', intentUrl: ''),
  ];

  ///another placeholder use of an adapter to support dynamic app bars
  List<BottomNavigationBarItem> getFakeBottomNavBarItems() => [
    BottomNavigationBarItem(icon: Icon(Icons.home_filled, color: Colors.black,), label: 'HOME'),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.black,), label: 'ORDERS'),
    BottomNavigationBarItem(icon: Icon(Icons.home_filled, color: Colors.black,), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.chat_bubble, color: Colors.black,), label: 'MESSAGES'),
    BottomNavigationBarItem(icon: Icon(Icons.home_filled, color: Colors.black,), label: ''),
  ];

  ///This should be dynamic and would be a data driven object as well in a separate service
  List<String> getAppCategories() => ['Ride', 'Delivery', 'Eats', 'Flights'];
}
