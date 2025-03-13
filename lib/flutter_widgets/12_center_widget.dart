import 'package:flutter/material.dart';

class center_widget extends StatelessWidget {
  const center_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center Widget'),
      ),
      // body: Center(child: Text('Center Widget', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), )),
      body: Container(
        color: Colors.yellow,
        child: Center(
          widthFactor: 2,     // this is the property of center widget which is used to set the width of the container..
          heightFactor: 2,    // this is the property of center widget which is used to set the height of the container.. 
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ), // Container
        ), // Center
      ), // Container
    );
  }
}
