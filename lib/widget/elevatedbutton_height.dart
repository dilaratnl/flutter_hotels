import 'package:flutter/material.dart';
import 'package:flutter_hotel/const/hotel_const.dart';


class ElevatedButtonHeight extends StatelessWidget {
  const ElevatedButtonHeight({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  final double _height = 15;

  //final void Funcation() onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height / _height,
      child: ElevatedButton(style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: HotelConst.borderRadiusCircular40)
      ),
        onPressed: () {},
        child: Center(child: Text(text,)),
      ),
    );
  }
}
