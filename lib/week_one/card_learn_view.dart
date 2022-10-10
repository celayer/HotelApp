import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({Key? key}) : super(key: key);

  final String _image = "assets/images/5.jpg";
  final String _add = "Ekle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Card(
              elevation: 5,
              shadowColor: Colors.green,
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        _image,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.abc),
                          label: Text(_add),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.accessibility_new),
                          label: Text(_add),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
