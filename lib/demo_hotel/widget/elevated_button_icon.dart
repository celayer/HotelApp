import 'package:flutter/material.dart';

class ElevatedButtonTextField extends StatelessWidget {
  const ElevatedButtonTextField({Key? key, required this.text})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height/13,
        width: MediaQuery.of(context).size.width/6,
        child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.format_line_spacing_outlined),
            label: Text(text)));
  }
}
