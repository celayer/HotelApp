import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo_hotel/const/hotel_const.dart';
import 'package:flutter_application_1/demo_hotel/view/class_hotel_detail.dart';
import 'package:flutter_application_1/demo_hotel/widget/container_hotel_info.dart';
import 'package:flutter_application_1/demo_hotel/widget/elevated_button_icon.dart';
import 'package:flutter_application_1/demo_hotel/widget/icon_button.dart';
import 'package:flutter_application_1/demo_hotel/widget/text_theme.dart';

class ClassHotelHome extends StatelessWidget {
  const ClassHotelHome({Key? key}) : super(key: key);

  final double _heightTextField = 1.35;
  final double _heightTextFieldone = 11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: _paddingColumn(context),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: ClipRRect(
        borderRadius: HotelConst.borderContainerCircular,
        child: Container(
            height: MediaQuery.of(context).size.height / 20,
            width: MediaQuery.of(context).size.width / 10,
            child: Image.asset(HotelConst.Image_two)),
      ),
      title: Text(
        HotelConst.info_home_personal_speak,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: HotelConst.colorBlack),
      ),
      actions: [
        Container(
          height: MediaQuery.of(context).size.height / 20,
          child: iconButton(),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 215, 215),
              borderRadius: HotelConst.borderContainerCircular),
        ),
      ],
    );
  }

  Padding _paddingColumn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _hoteltitletext(),
          SizedBox(height: 20),
          _rowtextfieldelevatedbutton(context),
          SizedBox(height: 20),
          _rowPopularhotels(context),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: _rowStackScroll(context),
          ),
          SizedBox(height: 5),
          _rowMoreSeeAll(),
          SizedBox(height: 10),
          _conratinerRowinfo(context),
          SizedBox(height: 10),
          _conratinerRowinfo(context),
          SizedBox(height: 10),
          _conratinerRowinfo(context),
          SizedBox(height: 10),
          _conratinerRowinfo(context),
          SizedBox(height: 10),
          _conratinerRowinfo(context),
        ],
      ),
    );
  }

  ContainerHotelInfo _conratinerRowinfo(BuildContext context) {
    return ContainerHotelInfo(
      widget: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 3,
            child: ClipRRect(
              borderRadius: HotelConst.borderImageCircular,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => HotelDetail()),
                    ),
                  );
                },
                child: Image.asset(
                  HotelConst.Image_zero,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      HotelConst.info_Container_Hotels,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SizedBox(width: 80),
                    Icon(
                      Icons.bookmark_border_rounded,
                      color: HotelConst.colorBlue,
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 20,
                      color: HotelConst.colorBlack,
                    ),
                    Text(HotelConst.info_City_Location)
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: HotelConst.colorYellow,
                    ),
                    SizedBox(height: 5),
                    Text(
                      HotelConst.info_Point,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  HotelConst.info_night_rate,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: HotelConst.colorBlue),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _rowStackScroll(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _stackImagerow(context),
        SizedBox(width: 5),
        _stackImagerow(context),
        SizedBox(width: 5),
        _stackImagerow(context),
        SizedBox(width: 5),
        _stackImagerow(context),
        SizedBox(width: 5),
      ],
    );
  }

  Stack _stackImagerow(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 3.2,
          child: ClipRRect(
            borderRadius: HotelConst.borderImageCircular,
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => HotelDetail()),
                    ),
                  );
                },
                child: Image.asset(HotelConst.Image_zero)),
          ),
        ),
        Positioned(
          top: 5,
          right: 10,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.bookmark_border_rounded,
              color: HotelConst.colorWhite,
              size: 30,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                HotelConst.info_Stack_Image_Title,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: HotelConst.colorWhite),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: HotelConst.colorWhite,
                  ),
                  Text(
                    HotelConst.info_City_Location,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: HotelConst.colorWhite),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Row _rowPopularhotels(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          HotelConst.info_PopularHotel,
          style: Theme.of(context).textTheme.headline6,
        ),
        Text(HotelConst.info_Seeall),
      ],
    );
  }

  Row _rowtextfieldelevatedbutton(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / _heightTextFieldone,
          width: MediaQuery.of(context).size.width / _heightTextField,
          child: _textfield(),
        ),
        SizedBox(width: 10),
        ElevatedButtonTextField(text: ""),
      ],
    );
  }

  TextField _textfield() {
    return TextField(
      maxLength: 19,
      cursorColor: Colors.red,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        label: Text(HotelConst.info_Textfield),
        hintText: HotelConst.info_Textfield,
        prefixIcon: Icon(Icons.search),
      ),
      keyboardType: TextInputType.text,
    );
  }

  TextTTheme _hoteltitletext() {
    return TextTTheme(
      text: HotelConst.info_title_text,
    );
  }
}

class _rowMoreSeeAll extends StatelessWidget {
  const _rowMoreSeeAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          HotelConst.info_MoreHotel,
          style: Theme.of(context).textTheme.headline6,
        ),
        Text(HotelConst.info_Seeall)
      ],
    );
  }
}
