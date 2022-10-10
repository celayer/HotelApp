import 'package:flutter/material.dart';


class TabbarsButton extends StatefulWidget {
  const TabbarsButton({super.key});

  @override
  State<TabbarsButton> createState() => _TabbarsButtonState();
}

class _TabbarsButtonState extends State<TabbarsButton> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(),
              Container(height: 55,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TabBar(indicator: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.orange),
                    tabs: [
                      Tab(
    
                        child: TextButton(onPressed: (){}, child: Text("data")),
                        
                      ),
    
                       Tab(
    
                        child: ElevatedButton(onPressed: (){}, child: Text("data")),
                        
                      ),
    
    
    
    
    
                    ],
                  ),
                ),
              ),
              TabBarView(children: [

                



              ],)
            ],
          ),
        ),
      ),
    );
  }
}






