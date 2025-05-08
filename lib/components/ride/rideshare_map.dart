import 'package:flutter/cupertino.dart';

class RideshareMap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Image.asset('assets/images/map_image.png', fit: BoxFit.fill,),
    );
  }
}