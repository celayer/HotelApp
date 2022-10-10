import 'package:flutter/material.dart';

class ContainerrLearnView extends StatelessWidget {
  const ContainerrLearnView({Key? key}) : super(key: key);

  final String _texttitle = "Mezopotamya Living Lab";
  final String _texttitletwo = "Mezopotamya Living Lab";
  final String _textDolar = "\$ 1050";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height:75,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.green),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _texttitle,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
            
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.black,
                  ),
                  Text(
                    _texttitletwo,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                
                  
                  Text(_textDolar),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
