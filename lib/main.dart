import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/list_tile_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),

      debugShowCheckedModeBanner: false,
      home:ListTileLearnView(),
    );
  }
}


