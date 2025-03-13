// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class text_widget extends StatelessWidget {
  const text_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase',
            textScaleFactor: 1.5,
            // textAlign: TextAlign.right,
            // textAlign: TextAlign.justify,
            // textAlign: TextAlign.center,
            // textAlign: TextAlign.start,
            // textAlign: TextAlign.end,
            // textAlign: TextAlign.left,
            // textAlign: TextAlign.right,
            // textAlign: TextAlign.top,
            // textAlign: TextAlign.bottom,
            //------------------------------------------------------
            // textDirection: TextDirection.ltr,
            // textDirection: TextDirection.rtl,
            //------------------------------------------------------
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            // overflow: TextOverflow.fade,
            // overflow: TextOverflow.clip, // default
            // overflow: TextOverflow.visible,
            //-----------------------------------------------------
            // softWrap: true,
            // softWrap: false,    // this will work when the overflow issue.. it'll showing all the text in single line..
            //------------------------------------------------------
            style: TextStyle(
              // color: Colors.blue,
              fontFamily: 'Courier',
              backgroundColor: Colors.grey,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 20,
              letterSpacing: 1.5,
              wordSpacing: 2,
              height: 2,
              //-----------------------------------------------------
              // decoration: TextDecoration.underline,
              // decoration: TextDecoration.lineThrough,
              // decoration: TextDecoration.overline,
              // decorationStyle: TextDecorationStyle.dashed,
              // decorationStyle: TextDecorationStyle.dotted,
              // decorationStyle: TextDecorationStyle.solid,
              // decorationStyle: TextDecorationStyle.double,
              // decorationStyle: TextDecorationStyle.wavy,
              // decorationThickness: 2,
              // decorationColor: Colors.red,
              // decorationThickness: 2,
              // decoration: TextDecoration.none,
              //-----------------------------------------------------
              // shadows: [
              //   Shadow(color: Colors.red, offset: Offset(10, -10), blurRadius: 5),
              //   Shadow(color: Colors.red, offset: Offset(-10, 10), blurRadius: 5),
              //   // Shadow(color: Colors.blue, offset: Offset(2, 2)),
              //   // Shadow(color: Colors.green, offset: Offset(3, 3)),
              // ],
              //-----------------------------------------------------
              foreground: Paint()..color = Colors.blue
                ..strokeWidth = 1
                ..style = PaintingStyle.stroke,
              //-----------------------------------------------------
              // background: Paint()..color = Colors.red
              //   ..strokeWidth = 1
              //   ..style = PaintingStyle.stroke,
              //-----------------------------------------------------
            ),
          ),
        ),
      ),
    );
  }
}
