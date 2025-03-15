import 'package:flutter/material.dart';

class RotatedBox_widget extends StatelessWidget {
  const RotatedBox_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RotatedBox(
          //-- Clockwise rotation.. 
          // quarterTurns: 1,
          // quarterTurns: 2,
          // quarterTurns: 3,
          // quarterTurns: 4,
          //------------------------------------------------------------------------------------------------
          //-- Anti-clockwise rotation.. 
          // quarterTurns: -1,
          // quarterTurns: -2,
          // quarterTurns: -3,
          quarterTurns: -4,
          //------------------------------------------------------------------------------------------------
          // child: Text('Rotated Box'),
          child: Image.asset('assets/image/face3.png'),
        ),
      ),
    );
  }
}
