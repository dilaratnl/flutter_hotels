import 'package:flutter/material.dart';
import 'package:flutter_hotel/const/hotel_const.dart';
import 'package:flutter_hotel/widget/container_background_grey.dart';
import 'package:flutter_hotel/widget/row_card.dart';
import 'package:flutter_hotel/widget/text_large_bold.dart';
import 'package:flutter_hotel/widget/text_small_bold.dart';


class ClassHotelHome extends StatelessWidget {
  const ClassHotelHome({super.key});
  
  final double _posinedLeftFlagRow = 280;
  final double _posinedBottomFlagRow = 170;
  final double _sizeIconRow = 35.0;
  final double _posinedRightTextRow = 120;
  final double _posinedBottomTextRow = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, bottom: 30, right: 10, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _rowUserImageTitle(context),
              HotelConst.sizedBoxHeight20,
              TextLargeBold(
                text: HotelConst.info_test_question,
              ),
              HotelConst.sizedBoxHeight20,
              rowTextFieldIcon(context),
              HotelConst.sizedBoxHeight20,
              _TextSmallBold(context),
              HotelConst.sizedBoxHeight20,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RowCard(image: HotelConst.image_hotel_two,), 
                    HotelConst.sizedBoxWidth10,
                    RowCard(image: HotelConst.image_hotel_tree)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  
  Row _TextSmallBold(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextSmallBold(text: HotelConst.info_popular),
        Text(
          HotelConst.info_see,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: HotelConst.color_grey),
        )
      ],
    );
  }

  Row rowTextFieldIcon(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 8,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: HotelConst.borderRadiusCircular20),
                  hintText: HotelConst.info_search,
                  prefixIcon: Icon(Icons.search)),
            )),
        HotelConst.sizedBoxWidth15,
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
                color: HotelConst.color_blue,
                borderRadius: HotelConst.borderRadiusCircular40),
            height: MediaQuery.of(context).size.height / 15,
            child: const Icon(
              Icons.manage_search_rounded,
              color: HotelConst.color_white,
            ),
          ),
        )
      ],
    );
  }

  Row _rowUserImageTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          ContainerBackgroundGrey(
            widget: Image.asset(
              HotelConst.image_one,
              fit: BoxFit.cover,
            ),
          ),
         HotelConst.sizedBoxWidth15,
          Text(HotelConst.info_text,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: HotelConst.color_black)),
        ]),
        Row(
          children: [
            ContainerBackgroundGrey(widget: Icon(Icons.notifications_active))
          ],
        )
      ],
    );
  }
}
