import 'package:flutter/material.dart';

class TexttLearnView extends StatelessWidget {
  const TexttLearnView({Key? key}) : super(key: key);
  final String _textRakamm = "Günlük";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            Text(_textRakamm,style: Theme.of(context).textTheme.headline5,),

            Text(_textRakamm,style: Theme.of(context).textTheme.headline5,),




            Row(
              children: [
                Icon(Icons.star),
                Text(_textRakamm),

              ],
            ),



            



          ],
          

          

        


          






        ),
      ),

      




    );
    
  }
}