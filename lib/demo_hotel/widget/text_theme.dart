import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/demo_hotel/const/hotel_const.dart';

class TextTTheme extends StatelessWidget {
  const TextTTheme({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {

    return Text(text,style: Theme.of(context).textTheme.headline5?.copyWith(color: HotelConst.colorBlack,fontWeight: FontWeight.bold),);
    
  }
}