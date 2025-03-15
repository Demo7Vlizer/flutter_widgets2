import 'package:flutter/material.dart';

class Opacity_widget extends StatelessWidget {
  const Opacity_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      //
      body: Center(
        child: Opacity(
          // opacity: 0.5,       // now this will be having the opacity..  of 0.5 means 50% of the image will be visible.. 
          opacity: 0.2,
          child: Image.asset('assets/image/face3.PNG'),
        ), // Opacity
      ), // Center
    ); // Scaffold
  }
}
