import 'package:flutter/material.dart';
// import 'dart:math' as math;

//  Decoration, foregroundDecoration.. 

class container_widget extends StatelessWidget {
  const container_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: 400,
            height: 400,
            // color: Colors.red,
            //---------------------------------------------------------------------
            // constraints: BoxConstraints(minHeight: 100, minWidth: 200, maxHeight: 300, maxWidth: 400),
            //---------------------------------------------------------------------------------
            // decoration: BoxDecoration(
              // color: Colors.red,
              // borderRadius: BorderRadius.circular(20)
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
              // borderRadius: BorderRadius.only(topLeft: Radius.elliptical(50,30))
              // borderRadius: BorderRadius.vertical(top: Radius.circular(20) ) 
              //------------------------------------------------------------------------
              // border: Border.all(color: Colors.black, width: 10, style: BorderStyle.solid, )
              // border: Border(right: BorderSide(color: Colors.blue, width: 5))
              // border: Border.symmetric(horizontal: BorderSide(color: Colors.green, width: 10))
              // border: Border.symmetric(vertical: BorderSide(color: Colors.green, width: 10))
              //-------------------------------------------------------------------------------
              // shape: BoxShape.circle,
              // shape: BoxShape.rectangle   //-- The default one is already is rectangle... 
              // border: Border.all(color: Colors.orange, width: 5),
              //-------------------------------------------------------------------------
              // image: DecorationImage(image: AssetImage('assets/image/girlPhoto.png'), fit: BoxFit.cover, ),
              // border: Border.all(color: Colors.orange, width: 5),
              // shape: BoxShape.circle,
              //-------------------------------------------------------------------------------------------
              // gradient: LinearGradient(colors: [Colors.red, Colors.blue, ])
              // gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.red, Colors.blue, ])
              // gradient: RadialGradient( colors: [Colors.red, Colors.blue, Colors.green, Colors.pink, Colors.black45 ]),
              // gradient: RadialGradient(center: Alignment.bottomLeft, colors: [Colors.red, Colors.blue, Colors.green, Colors.pink, Colors.black45 ]),
              // shape: BoxShape.circle
              //------------------------------------------------------------------------------
              // boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]
              // boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10, offset: Offset(10, 5))]
            // ),
            //--------------------------------------------------------------------------------------
            child: Image.asset('assets/image/girlPhoto.png'),
            // decoration: BoxDecoration(             //-- This will 
            //   image: DecorationImage(
            //     image: AssetImage('assets/image/avtar.png'),
            //     fit: BoxFit.cover,
            //   )
            // ),
            foregroundDecoration: BoxDecoration(     // foreground is over the image.. 
              image: DecorationImage(
                image: AssetImage('assets/image/avtar.png'),
                fit: BoxFit.cover,
              )
            ),
            //---------------------------------------------------------
            // margin: EdgeInsets.all(10),
            // margin: EdgeInsets.symmetric(horizontal: 10, 4 vertical: 10),
            // margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            // margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            //---------------------------------------------------------
            // child: const Text(
            //   'Hello, World!',
            //   style: TextStyle(fontSize: 20, color: Colors.white),
            // ),
            // padding: EdgeInsets.all(10),
            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            // padding: EdgeInsets.only(left: 10, right: 40, top: 40, bottom: 10),
            // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            //---------------------------------------------------------
            // alignment: Alignment.center,
            // alignment: Alignment.topLeft,
            // alignment: Alignment.topRight,
            // alignment: Alignment.bottomLeft,
            // alignment: Alignment.bottomRight,
            // alignment: Alignment.centerLeft,
            // alignment: Alignment.centerRight,
            // alignment: Alignment.centerTop,
            // alignment: Alignment.centerBottom,
            //---------------------------------------------------------
            // transform: Matrix4.rotationZ(math.pi / 180) * 10), // clock wise direction
            // transform: Matrix4.rotationZ(-(math.pi / 180) * 10), // anticlock wise direction
            // transform: Matrix4.rotationZ(math.pi / 4),
            // transform: Matrix4.rotationX(math.pi / 4),
            // transform: Matrix4.rotationY(math.pi / 4),            // transform: Matrix4.rotationZ(math.pi / 4),
            //---------------------------------------------------------
          ),
        ),
      ),
    );
  }
}
