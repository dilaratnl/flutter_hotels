import 'package:flutter/material.dart';
import 'package:flutter_hotel/const/hotel_const.dart';


class TextSmallBold extends StatelessWidget {
  const TextSmallBold({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style:Theme.of(context).textTheme.headline6?.copyWith(color: HotelConst.color_black,fontWeight: FontWeight.bold

    ));
  }
}