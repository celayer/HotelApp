

import 'package:flutter/material.dart';

class TabbarLearnViewClass extends StatefulWidget {
  const TabbarLearnViewClass({super.key});

  @override
  State<TabbarLearnViewClass> createState() => _TabbarLearnViewClassState();
}

class _TabbarLearnViewClassState extends State<TabbarLearnViewClass>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  static List<Tab> _tabBar = [
    Tab(
      child: Text("Action"),
    ),
    Tab(
      child: Text("Horror"),
    ),
    Tab(
      child: Text("Comedy"),
    ),
    Tab(
      child: Text("Animation"),
    ),
    Tab(
      child: Text("Romantic"),
    ),
  ];

  static List<Widget> _tabbarView = [
    Center(child: Text("data")),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.red,
      child: ElevatedButton(onPressed: () {}, child: Text("sasas")),
    ),
    Container(
      color: Colors.blueAccent,
      child: Center(child: Text("data")),
    ),
  ];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: _tabBar.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabBar.length,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              height: 100,
              color: Colors.amber,
            ),
            TabBar(
              tabs: _tabBar,
              isScrollable: true,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.red,
              controller: _tabController,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.teal),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: TabBarView(children: _tabbarView,controller: _tabController,),),
          ],
        ),
      ),
    );
  }
}
