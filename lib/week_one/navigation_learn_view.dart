

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/week_one/scroll_learn_view.dart';

class NavigationLearnView extends StatelessWidget {
  const NavigationLearnView({Key? key}) : super(key: key);
  final String _title = "Anasayfa";
  final String _Image = "assets/images/5.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(30),
                    //bottomRight: Radius.circular(30),
                  ),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) => ScrollLearnView()),
                          ),
                        );
                      },
                      child: Image.asset(_Image))),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScrollLearnView(),
                  ),
                );
              },
              child: Text(_title),
            ),
          ],
        ),
      ),
    );
  }
}
