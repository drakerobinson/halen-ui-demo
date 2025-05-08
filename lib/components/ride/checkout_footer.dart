import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_size_text/flutter_auto_size_text.dart';
import 'package:halen_demo/colors.dart';

class CheckoutFooter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 2,
            blurStyle: BlurStyle.outer,
            color: Colors.grey
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(children: [
          SizedBox(
            height: 60,
            child: Row(
              children: [
                getCreditCardOptions(),
                Spacer(),
                getTimingOptions(),
              ],
            ),
          ),
          getBookCarButton(context),
        ],),
      ),
    );
  }

  ///I was admittedly lazy about this as I've got to run some errands this evening

  getCreditCardOptions() {
    return Row(children: [
      Icon(Icons.credit_card, size: 35, color: HalenColors.tabDarkColor,),
      SizedBox(width: 10,),
      AutoSizeText('***7539', style: TextStyle(color: HalenColors.tabDarkColor, fontWeight: FontWeight.bold)),
      SizedBox(width: 15,),
      Icon(Icons.chevron_right, size: 35, color: HalenColors.tabDarkColor,)
    ],);
  }

  getTimingOptions() {
    return Row(children: [
      Icon(Icons.access_time_filled_outlined, size: 35, color: HalenColors.tabDarkColor,),
      SizedBox(width: 10,),
      AutoSizeText('Now', style: TextStyle(color: HalenColors.tabDarkColor, fontWeight: FontWeight.bold),),
      SizedBox(width: 25,),
      Icon(Icons.chevron_right, size: 35, color: HalenColors.tabDarkColor,)
    ],);
  }

  getBookCarButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0, top: 8),
      child: TextButton(
        style: TextButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width * .95, 50),
          backgroundColor: HalenColors.tabDarkColor,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),

        ),
          onPressed: () {}, child: Text('Book this Car', style: TextStyle(color: Colors.white),)),
    );
  }
}