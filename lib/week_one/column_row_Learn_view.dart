import 'package:flutter/material.dart';
import 'package:flutter_application_1/week_one/container_view.dart';

class ColumnRowLearnView extends StatelessWidget {
  const ColumnRowLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Row(
              children: const [
                Expanded(
                  flex: 8,
                  child: ContainerView(color: Colors.amber),
                ),
                Expanded(
                  flex: 8,
                  child: ContainerView(color: Colors.red),
                ),
                Expanded(
                  flex: 8,
                  child: ContainerView(color: Colors.blue),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 1,
            child: ContainerView(color: Colors.black),
          ),
          Expanded(
            flex: 1,
            child: ContainerView(color: Colors.green),
          ),
          Expanded(
            flex: 1,
            child: ContainerView(color: Colors.pink),
          ),
        ],
      ),
    );
  }
}
