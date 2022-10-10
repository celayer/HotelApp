import 'package:flutter/material.dart';

class iconButton extends StatelessWidget {
  const iconButton({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){}, icon: Icon(Icons.add_alert_outlined,color: Colors.black,),);
    
  }
}