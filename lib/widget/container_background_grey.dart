import 'package:flutter/material.dart';
import 'package:flutter_hotel/const/hotel_const.dart';


class ContainerBackgroundGrey extends StatelessWidget {
  const ContainerBackgroundGrey({super.key, required this.widget});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 20,
      width: MediaQuery.of(context).size.width / 12,
      decoration: BoxDecoration(
          borderRadius: HotelConst.borderRadiusCircular40,
          color: HotelConst.color_grey),
          child: widget,
    );
  }
}
