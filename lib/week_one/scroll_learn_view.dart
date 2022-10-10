import 'package:flutter/material.dart';

class ScrollLearnView extends StatelessWidget {
  const ScrollLearnView({Key? key}) : super(key: key);

  final String _Image = "assets/images/5.jpg";
  final String _text = "Mezopotamya living Lab";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  textTitle(context),
                  singleScrollCard(),
                  cardImage(),
                  cardImage(),
                  cardImage(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Card cardImage() => Card(
        child: Image.asset(_Image),
      );

  Text textTitle(BuildContext context) {
    return Text(
      _text,
      style:
          Theme.of(context).textTheme.headline4?.copyWith(color: Colors.amber),
    );
  }

  SingleChildScrollView singleScrollCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizeBoxCard(Image: _Image),
          SizeBoxCard(Image: _Image),
          SizeBoxCard(Image: _Image),
          SizeBoxCard(Image: _Image),
          SizeBoxCard(Image: _Image),
        ],
      ),
    );
  }
}

class SizeBoxCard extends StatelessWidget {
  const SizeBoxCard({
    Key? key,
    required String Image,
  })  : _Image = Image,
        super(key: key);

  final String _Image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 2,
      child: Card(
        child: Image.asset(
          _Image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
