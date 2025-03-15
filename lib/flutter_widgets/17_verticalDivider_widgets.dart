import 'package:flutter/material.dart';

class verticalDivider_widgets extends StatelessWidget {
  const verticalDivider_widgets({super.key});

  @override
  Widget build(BuildContext context) {  
   return Scaffold(
    appBar: AppBar(),
    body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 
        Container(
          width: 100,
          height: double.infinity,
          color: Colors.blue[200],
        ), // Container
        // 
        const VerticalDivider(
          color: Colors.black,
          thickness: 2,       // it'll give thickness of the divider 
          indent: 20,         // it'll give gap from start 
          endIndent: 20,    // it'll give gap from end 
          width: 30,        // it'll give left and right gap  .. 
        ),
        // 
        Container(
          width: 100,
          height: double.infinity,
          color: Colors.purple[200],
        ), // Container
      ],
    ), // Row
  ); // Scaffold
}
}