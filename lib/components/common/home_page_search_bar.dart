import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageSearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///This should be a TextField; but for the sake of a quick demo we're limiting functionality to almost nothing
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('How may we serve you today?'),
            ),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(Icons.search),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
