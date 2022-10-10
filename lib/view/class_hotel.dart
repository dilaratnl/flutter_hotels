import 'package:flutter/material.dart';
import 'package:flutter_hotel/const/hotel_const.dart';
import 'package:flutter_hotel/widget/elevatedbutton_height.dart';


class ClassHotel extends StatelessWidget {
  const ClassHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _sizebBoxBackGroundImage(context),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight: Radius.circular(55)),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              HotelConst.info_title,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  ?.copyWith(color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Text(
                              HotelConst.info_title_zero,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  ?.copyWith(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(HotelConst.info_title_one,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    ?.copyWith(color: Colors.black)),
                          ],
                        ),
                        SizedBox(height: 18),
                        Text(
                          HotelConst.info_contex,
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(color: Color.fromARGB(255, 100, 100, 100)), 
                        ), SizedBox(height: 50,),
                         ElevatedButtonHeight(text: HotelConst.info_elevatedButton_text)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  SizedBox _sizebBoxBackGroundImage(BuildContext context) {
    return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            HotelConst.image_zero,
            fit: BoxFit.cover,
          ),
        );
  }
}


