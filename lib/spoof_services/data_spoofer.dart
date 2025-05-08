import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halen_demo/colors.dart';
import 'package:halen_demo/podos/carousel_item.dart';

class DataSpoofer {
  List<CarouselItem> getFakeEvents() => [
    CarouselItem(
      header: 'Carmichael Farmer Market',
      backgroundUrl: 'https://picsum.photos/200',
      formattedDate: 'Sun, May 3',
      imageBorderColor: HalenColors.primary,
    ),
    CarouselItem(
      header: 'Concert at the Park',
      backgroundUrl: 'https://picsum.photos/200',
      formattedDate: 'Sat, May 10',
      imageBorderColor: HalenColors.tertiary,
    ),
    CarouselItem(
      header: 'Carmichael Farmer Market',
      backgroundUrl: 'https://picsum.photos/200',
      formattedDate: 'Sun, May 18',
      imageBorderColor: HalenColors.primary,
    ),
    CarouselItem(
      header: 'Famous Dave\'s park barbeque!',
      backgroundUrl: 'https://picsum.photos/200',
      formattedDate: 'Thu, May 22',
      imageBorderColor: HalenColors.tertiary,
    ),
  ];

  List<CarouselItem> getFakePromotions() => [
    CarouselItem(
      backgroundUrl: 'assets/images/promo_image.png',
      isLocalAsset: true,
      intentUrl: 'https://gethalen.com/',
    ),
    CarouselItem(backgroundUrl: 'https://picsum.photos/400/200', intentUrl: ''),
  ];

  ///another placeholder use of an adapter to support dynamic app bars
  List<BottomNavigationBarItem> getFakeBottomNavBarItems() => [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_filled, color: HalenColors.bottomNavItemColor),
      label: 'HOME',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart, color: HalenColors.bottomNavItemColor),
      label: 'ORDERS',
    ),
    BottomNavigationBarItem(
      icon: SizedBox(
        width: 35,
        height: 35,
        child: SvgPicture.asset('assets/halenlogo.svg'),
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.chat_bubble, color: HalenColors.bottomNavItemColor),
      label: 'MESSAGES',
    ),
    BottomNavigationBarItem(
      icon: CircleAvatar(
        backgroundImage: NetworkImage('https://avatar.iran.liara.run/public'),
      ),
      label: '',
    ),
  ];

  ///This should be dynamic and would be a data driven object as well in a separate service
  List<String> getAppCategories() => ['Ride', 'Delivery', 'Eats', 'Flights'];


  ///The fill color would be added here & handled via callback, viewModel or BLoC
  List<Widget> getFakeRideTabs() => [
    Text('Economy'),
    Text('Luxury'),
    Text('Taxicab')
  ];
}
