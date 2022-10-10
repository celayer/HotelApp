


import 'package:flutter/material.dart';

class TextPublic extends StatelessWidget {
  const TextPublic({Key? key, required this.textPublic}) : super(key: key);

  final String textPublic;

  @override
  Widget build(BuildContext context) {
    return Text(textPublic);
    
  }
}