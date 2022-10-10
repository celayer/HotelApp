import 'package:flutter/material.dart';
import 'package:flutter_application_1/week_one/container_learn_view.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);

  final String _title = "ProByte Game";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: Text(_title),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {print("Tıklama Sayısı");},
            icon:
                Icon(Icons.add), // color: Colors.red,     ===> Kullanım Şekli.
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.verified_user),
          ),
        ],
        //leading: Icon(Icons.add),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Column(
        children: [containerRed(containerTitle: 'title', buttonTitle: 'button')],
      ),
    );
  }
}
