import 'package:flutter/material.dart';

class positioned_widgets extends StatelessWidget {
  const positioned_widgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Positioned Widget'),
        ),
        // body: Center(
        //   child: Stack(
        //     // clipBehavior: Clip.none,    //-- if we set this then the child's properties will not be overridden..
        //     // alignment: Alignment.bottomRight,
        //     //--------------------------------------------------------------------------------------------------------
        //     children: [
        //       Container(
        //         width: 300,
        //         height: 300,
        //         color: Colors.red,
        //       ),
        //       Positioned(     //-- byDefault it'll be align top left corner..  and also this will override the child's properties..
        //         // top: 50,            // it'll align 50px from top side..
        //         // bottom: 50,          // it'll align 50px from bottom side..
        //         left: 50,          // it'll align 50px from left side..
        //         // right: 50,           // it'll align 50px from right side..
        //         // top: 20,              // this is taking more priority then the child whatever we set in the child..
        //         // bottom: 10,           // this is taking more priority then the child whatever we set in the child..
        //         // left: -50,
        //         // right: -20,
        //         //-----------------------------------------------------------------
        //         //-- We also set width and height to the child..
        //         // width: 200,
        //         // height: 200,
        //         child: Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.blue,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        //--------------------------------------------------------------------------------------------------------------------------
        //-- Let's create something..
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            // Image
            Image.asset('assets/image/food.png', fit: BoxFit.cover),

            // Circular Image
            Positioned(
              // top: 100,
              bottom: -40,
              // left: 200,
              left: MediaQuery.of(context).size.width /2-50,

              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage('assets/image/face2.PNG'),
                  ), // DecorationImage
                  border: Border.all(color: Colors.white54, width: 2),
                ), // BoxDecoration
              ),
            ), // Container
          ],
        ) // Stack
        );
  }
} 



//-- This is the properties of the Positioned widget 
// const Positioned(
//   {Key? key,
//   required Widget child,

//   double? left,
//   double? right,
//   double? width,

//   double? top,
//   double? bottom,
//   double? height}
// )