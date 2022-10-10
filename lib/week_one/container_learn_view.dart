import 'package:flutter/material.dart';

class ContainerLearnView extends StatelessWidget {
  const ContainerLearnView({Key? key}) : super(key: key);

  final String _containerTitle = "Container Title";
  final String _buttonTitle = "Ekle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            containerRed(
                containerTitle: _containerTitle, buttonTitle: _buttonTitle),
            containerRed(
                containerTitle: _containerTitle, buttonTitle: _buttonTitle),
            
          ],
        ),
      ),
    );
  }
}

class containerRed extends StatelessWidget {
  const containerRed({
    Key? key,
    required String containerTitle,
    required String buttonTitle,
  })  : _containerTitle = containerTitle,
        _buttonTitle = buttonTitle,
        super(key: key);

  final String _containerTitle;
  final String _buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            _containerTitle,
            style: TextStyle(fontSize: 25),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.push_pin),
            label: Text(_buttonTitle),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(23),
      ),
      height: 200.0,
      width: 200.0,
    );
  }
}
