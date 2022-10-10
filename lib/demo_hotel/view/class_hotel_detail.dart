import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/demo_hotel/widget/text_public.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: TextPublic(textPublic: "Tomatoes"),
    );
    
  }
}