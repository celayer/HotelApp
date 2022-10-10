import 'package:flutter/material.dart';

class CardDizaynLearnView extends StatelessWidget {
  const CardDizaynLearnView({Key? key}) : super(key: key);

  final _textTitle = "FORD RAPTOR";
  final _textTitletree = "Only";
  final _textTitlefor = "2000 Full";

  final _textTitletwo = "\$500";

  final _ttextTitle = "1000";

  final _image = "assets/images/1.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          height: 335,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Text(
                    _textTitle,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    _textTitlefor,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(
                    height: 200,
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(55),
                          child: Image.asset(_image)),
                    ),
                  ),
                  Text(_textTitletree),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _textTitletwo,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Text(_ttextTitle),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
