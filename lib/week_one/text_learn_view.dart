import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Her Tıklandığında Say");
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.add), Text('Eklea')],
        ),
      ),
      body: Center(
        child: Text('ALİRIZA CELAYERİN TELEFONU'),
      ),
    );
  }
}
