import 'package:flutter/material.dart';

// Align widget is used to align the child widget to the center of the parent widget..

class align_widget extends StatelessWidget {
  const align_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Align Widget'),
        ),
        // body: Container(
        //   height: 300,
        //   width: 300,
        //   color: Colors.blue.withOpacity(0.5),
        //   child: Align(
        //     // alignment: Alignment.topLeft,
        //     // alignment: Alignment.topRight,
        //     // alignment: Alignment.bottomLeft,
        //     // alignment: Alignment.bottomRight,
        //     // alignment: Alignment.center,               // this is default one..
        //     // alignment: Alignment.centerLeft,
        //     // alignment: Alignment.centerRight,
        //     // alignment: Alignment.centerTop,
        //     // alignment: Alignment.centerBottom,
        //     // alignment: Alignment.topCenter,
        //     // alignment: Alignment.bottomCenter,
        //     //----------------------------------------------
        //     // alignment: Alignment(0.5, 0.5),
        //     // alignment: Alignment(-0.5, -0.5),
        //     //----------------------------------------------
        //     // alignment: FractionalOffset(0, 0),
        //     // alignment: FractionalOffset(1, 1),
        //     // alignment: FractionalOffset(0, 1),
        //     // alignment: FractionalOffset(1, 0),
        //     //----------------------------------------------
        //     widthFactor: 2,
        //     // heightFactor: 2,
        //     //----------------------------------------------
        //     child: Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.blue,
        //     ),

        //   ),
        // ),
        //----------------------------------------------
        // let's play with width and height factor
        // body: Center(
        //   child: Container(
        //     color: Colors.blue.withOpacity(0.5),
        //     child: Align(
        //       // widthFactor: 0.5,     // it's mean width of the container will be 50% of the parent container..
        //       // widthFactor: 2,      // it's mean width of the container will be 2 times of the parent container..
        //       heightFactor: 2,
        //       alignment: Alignment.topLeft,
        //       child: Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.blue,
        //       ), // Container
        //     ), // Align
        //   ),
        // ), // Container
        //----------------------------------------------
        //-- let's make somethinig by the alignment..
        body: Container(
          padding: const EdgeInsets.all(24),
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Align(
                widthFactor: 0.4,        // this will make all the profile picture... from top to bottom.. 
                child: Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.white, width: 2),
                    image: DecorationImage(
                      image: AssetImage('assets/image/face$index.PNG'),
                    ), // DecorationImage
                  ), // BoxDecoration
                ),
              ); // Container
            },
          ),
        ));
  }
}



//---- This is the constructor of the Align widget..  properties are given below.. 
// //const Align(
//   {Key? key,
//   AlignmentGeometry alignment = Alignment.center,
//   double? widthFactor,
//   double? heightFactor,
//   Widget? child}
// )