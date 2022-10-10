import 'package:flutter/material.dart';

class ListTileLearnView extends StatelessWidget {
  const ListTileLearnView({Key? key}) : super(key: key);
  final String _subTitle="Mezopotamya Living Lab";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: ListTile(
          leading: Icon(
            Icons.supervised_user_circle_sharp,
            size: 45,
          ),
          title: Text(_subTitle),
          subtitle: Text(_subTitle),
          onTap: (){},
          selected: true,
          selectedColor: Colors.amber,
          //Sıkıştırma
          dense: true,
          trailing: Icon(Icons.arrow_right_alt),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
        ),
      ),
    );
  }
}
