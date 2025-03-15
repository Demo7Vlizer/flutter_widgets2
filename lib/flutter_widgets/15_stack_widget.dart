import 'package:flutter/material.dart';

class stack_widget extends StatelessWidget {
  const stack_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //     body: Stack(
        //   children: [
        //     // orange container
        //     Container(
        //       width: 300,
        //       height: 300,
        //       color: Colors.orange,
        //     ),

        //     // red container
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.red,
        //     ),

        //     // green container
        //     Container(
        //       width: 200,
        //       height: 200,
        //       color: Colors.green,
        //     ),
        //   ],
        // )
        //--------------------------------------------------------------------------------------------------------------------------
        body: Container(
          width: 300,
          height: 300,
          color: Colors.orange,
        ), 
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            // red container
        Positioned(
          left: 50,
          bottom: 70,
          child: Container(
            width: 300,
            height: 300,
            color: Colors.red,
          ), // Container
        ), // Position

        // green container
        // Container(
        //   width: 200,
        //   height: 200,
        //   color: Colors.green,
        // ), 
        // Container(
        //   width: 200,
        //   height: 200,
        //   color: Colors.blue,
        // ), 
      ],
    ));
  }
}
