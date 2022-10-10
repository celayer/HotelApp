import 'package:flutter/material.dart';

class TextViewLearn extends StatelessWidget {
  const TextViewLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: (){print('Tıklanacak Ve Gör');},child:Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [Icon(Icons.add), Text('Ekle')],)),
      body: Center(child: Text('Bu Bir Yazıdır  Ol lütfen'),),





    );
    
  }
}