import 'package:flutter/material.dart';

/*
 * Paddding
 *      EdgeInsetsGeometry
 *          /        \
 *    EdgeInsets  EdgeInsetsDirectional
 *  L => R Start => End
 *  R => L End => Start
 */

// ignore: camel_case_types
class padding_widgets extends StatelessWidget {
  const padding_widgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Directionality(
        // textDirection: TextDirection.ltr,      //-= for right to left text
        textDirection: TextDirection.rtl,      //-= for left to right text
        child: Card(
          color: Colors.blue,
          // elevation: 10,
          // shadowColor: Colors.red,
          child: Padding(
            // padding: EdgeInsets.all(20),
            // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            // padding: EdgeInsets.fromLTRB(20, 8, 20, 8),   //-= from left, top, right, bottom 
            // padding: EdgeInsetsDirectional.fromSTEB(200,10,50, 10),   //-= from start, top, end, bottom
            padding: EdgeInsetsDirectional.all(20),
            child: Text(
              'Click me',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    ));
  }
}
