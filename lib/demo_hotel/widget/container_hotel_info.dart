import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo_hotel/const/hotel_const.dart';

class ContainerHotelInfo extends StatelessWidget {
  const ContainerHotelInfo({Key? key, required this.widget}) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width / 1,
      decoration: BoxDecoration(
        borderRadius: HotelConst.borderContainerCircular,
        color: Color.fromARGB(255, 214, 212, 212),
      ),
      child: widget,
    );
  }
}
