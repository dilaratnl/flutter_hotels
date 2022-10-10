import 'package:flutter/material.dart';
import 'package:flutter_hotel/view/class_hotel.dart';
import 'package:flutter_hotel/view/class_hotel_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ClassHotel(),
    );
  }
}

