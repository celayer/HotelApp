import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo_hotel/widget/context_text.dart';
import 'package:flutter_application_1/demo_hotel/const/hotel_const.dart';
import 'package:flutter_application_1/demo_hotel/view/class_hotel_home.dart';
import 'package:flutter_application_1/demo_hotel/widget/elevated_button_height.dart';

class ClassOtelInfo extends StatelessWidget {
  const ClassOtelInfo({Key? key}) : super(key: key);

  final double _height = 2.3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          sizeBoxbackcolorImage(context),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: HotelConst.radiuscircular40,
                    topRight: HotelConst.radiuscircular40),
                child: Container(
                  height: MediaQuery.of(context).size.height / _height,
                  width: MediaQuery.of(context).size.width,
                  color: HotelConst.colorWhite,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        _titleText(context),
                        SizedBox(height: 15),
                        ContextText(text: HotelConst.info_context),
                        SizedBox(height: 70),
                        ElevatedButtonHeigth(
                          text: HotelConst.info_elevatedButton_text,
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: ((context) => ClassHotelHome()),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Text _titleText(BuildContext context) {
    return Text(
      HotelConst.info_title,
      style:
          Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black),
    );
  }

  SizedBox sizeBoxbackcolorImage(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Image.asset(
        HotelConst.Image_zero,
        fit: BoxFit.fill,
      ),
    );
  }
}
