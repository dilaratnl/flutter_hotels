import 'package:flutter/material.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Column(children: [Stack(children: [Image.asset(image,fit: BoxFit.cover,)],)],));
  }
}