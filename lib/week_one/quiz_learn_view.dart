import 'package:flutter/material.dart';

class QuizlearnView extends StatelessWidget {
  const QuizlearnView({Key? key}) : super(key: key);
  final String _point = "4.7";
  final String _Image = "assets/images/5.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(_Image),
                ClipRRect(borderRadius: BorderRadius.circular(50),
                  child: Container(color: Colors.grey,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(left: 350,
                  child: Icon(
                    Icons.flag_circle_outlined,
                    color: Colors.white,size: 35,
                  ),
                )
              ],
            ),
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.star),
                  label: Text(_point),
                )),
          ],
        ),
      ),
    );
  }
}
