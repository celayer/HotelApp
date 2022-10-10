import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({Key? key}) : super(key: key);

  final String _button = 'Elevated Button';
  final String _textButton = 'TextButton';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            elevatedbutton(button: _button),
            elevatediconbutton(button: _button),
            textbutton(textButton: _textButton),
            textbuttonicon(textButton: _textButton),
          ],
        ),
      ),
    );
  }
}

class textbuttonicon extends StatelessWidget {
  const textbuttonicon({
    Key? key,
    required String textButton,
  })  : _textButton = textButton,
        super(key: key);

  final String _textButton;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        print("Tıklanacak");
      },
      icon: Icon(Icons.abc),
      label: Text(
        _textButton,
        style: buttonStyle(),
      ),
    );
  }
}

class textbutton extends StatelessWidget {
  const textbutton({
    Key? key,
    required String textButton,
  })  : _textButton = textButton,
        super(key: key);

  final String _textButton;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        _textButton,
        style: buttonStyle(),
      ),
    );
  }
}

class elevatediconbutton extends StatelessWidget {
  const elevatediconbutton({
    Key? key,
    required String button,
  })  : _button = button,
        super(key: key);

  final String _button;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text(
        _button,
        style: buttonStyle(),
      ),
    );
  }
}

class elevatedbutton extends StatelessWidget {
  const elevatedbutton({
    Key? key,
    required String button,
  })  : _button = button,
        super(key: key);

  final String _button;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(_button, style: buttonStyle()),
    );
  }
}

TextStyle buttonStyle() {
  return TextStyle(
      color: Colors.red, fontSize: 20, fontWeight: FontWeight.w400);
}
