import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo_hotel/const/hotel_const.dart';

class ElevatedButtonHeigth extends StatelessWidget {
  const ElevatedButtonHeigth({Key? key, required this.text, required this.onPressed}) : super(key: key);

  final String text;
  final double _height = 15;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / _height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: HotelConst.borderCircular)),
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}


