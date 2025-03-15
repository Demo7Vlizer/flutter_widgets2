import 'package:flutter/material.dart';

class divider_widgets extends StatelessWidget {
  const divider_widgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Divider Widget'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.orange[200],
          ), // Container

          const Divider(
            height: 50,       // it'll give margin from top and bottom something like .. 
            thickness: 2,         // it'll give thickness of the divider 
            indent: 20,     // give gap from start 
            endIndent: 20,      // give gap from end  
            color: Colors.black,
          ),

          Container(
            width: double.infinity,
            height: 200,
            color: Colors.green[200],
          ), // Container
        ],
      ), // Column
    ); // Scaffold
  }
}
