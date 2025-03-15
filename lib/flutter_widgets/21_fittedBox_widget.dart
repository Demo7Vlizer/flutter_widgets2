import 'package:flutter/material.dart';

class fittedBox_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      //
      // body: FittedBox(
      //   child: Row(
      //     children: [
      //       // text
      //       const Text(
      //         'This is the text',
      //         style: TextStyle(fontSize: 30),
      //       ), // Text

      //       // image
      //       Image.asset('assets/image/face3.PNG'),
      //     ],
      //   ),
      // ),
      //------------------------------------------------------------------------------------------------
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue[400],
          child: FittedBox(
            // fit: BoxFit.scaleDown,
            fit: BoxFit.cover,
            // fit: BoxFit.fitWidth,
            // fit: BoxFit.fitHeight,
            // fit: BoxFit.none,
            // fit: BoxFit.fill,
            //--------------------------
            clipBehavior: Clip.hardEdge,
            //---------------------------
            alignment: Alignment.topCenter,
            // alignment: Alignment.bottomCenter,
            // alignment: Alignment.center,
            // alignment: Alignment.centerLeft,
            // alignment: Alignment.centerRight,
            // alignment: Alignment.centerTop,
            child: const Text(
              'This is large Text',
              style: TextStyle(fontSize: 80),
            ),
          ), // Text
        ), // Container
      ), // Center
    );
  }
}
