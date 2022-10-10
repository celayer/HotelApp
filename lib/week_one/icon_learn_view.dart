import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  const IconLearnView({Key? key}) : super(key: key);

  final String _location = "Konum";
  final String _stars = "StarYazı";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                     Icon(
                      color: Colors.red,
                      Icons.location_on_outlined,
                      size: 75,
                    ),Text(
                  _location,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.red),
                ),
                  ],
                ),                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text(_stars,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Colors.red))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator(
              color: Colors.green,
              backgroundColor: Colors.blue,
              strokeWidth: 3,
            ),
            const SizedBox(
              height: 20,
            ),
            const LinearProgressIndicator(
              backgroundColor: Colors.blue,
              color: Colors.green,
              minHeight: 4,
            ),
          ],
        ),
      ),
    );
  }
}
