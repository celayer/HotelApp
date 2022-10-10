import 'package:flutter/material.dart';

class StackLearnView extends StatelessWidget {
  const StackLearnView({Key? key}) : super(key: key);

  final String _image = "assets/images/5.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          children: [
            Image.asset(_image),
            Positioned(
              left: 10,
              bottom: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red[600],
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red[600],
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.font_download_sharp),),
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
