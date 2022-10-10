import 'package:flutter/material.dart';
import 'package:flutter_hotel/const/hotel_const.dart';


class RowCard extends StatelessWidget {
  const RowCard({super.key, required this.image});

  final double _widthRow = 1.3;
  final double _heightRow = 4.0;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            _CliprrectImage(context),
            _rightTopIcon(),
          ],
        ),
      ],
    );
  }

  ClipRRect _CliprrectImage(BuildContext context) {
    return ClipRRect(borderRadius: HotelConst.borderRadiusCircular20,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width / _widthRow,
              height: MediaQuery.of(context).size.height / _heightRow,
            ),
          );
  }

  Positioned _rightTopIcon() {
    return Positioned(
        right: 10,
        top: 10,
        child: Icon(
          Icons.bookmark_border,
          color: HotelConst.color_white,
        ));
  }
}
