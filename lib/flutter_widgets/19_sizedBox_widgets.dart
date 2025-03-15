import 'package:flutter/material.dart';

// -- sizedBox espifically that creates a box with a specific size..  whatever the widget is..  placed inside the sizedbox..  it will take the size of the sizedbox..
//-- SizedBox is used to set the size of the widget..  like some widget don't have size property.. like elevated button..
//-- another use of sizedbox is to create a space between the widgets..

class sizedBox_widgets extends StatelessWidget {
  const sizedBox_widgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(                      // Scaffold is a widget that can take available entire size of the screen..  
      appBar: AppBar(),

      //
      // body: Center(
      //   child: Column(
      //     children: [
      //       SizedBox(
      //         width: 300,
      //         height: 100,
      //         child: ElevatedButton(
      //           style: ElevatedButton.styleFrom(
      //             backgroundColor: Colors.blue,
      //             foregroundColor: Colors.white,
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8.0),
      //             ),
      //             padding:
      //                 const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //           ),
      //           child: const Text('Login'),
      //           onPressed: () {},
      //         ),
      //       ),
      //       const SizedBox(        //-- another use of sizedbox is to create a space between the widgets..
      //         height: 40,
      //         // width: 40,        //-- if you want to set the width in row..  you can set the width of the sizedbox..
      //       ),
      //       SizedBox(
      //         height: 100,
      //         width: 300,
      //         child: ElevatedButton(
      //           style: ElevatedButton.styleFrom(
      //             backgroundColor: Colors.blue,
      //             foregroundColor: Colors.white,
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8.0),
      //             ),
      //             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //           ),
      //           child: const Text('Register'),
      //           onPressed: () {},
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      //------------------------------------------------------------------------------------------
      //-- DIFFERENT CONSTRUCTORS OF SIZEDBOX..
      // body: SizedBox.fromSize(
      //   size: const Size(400, 100),     // 400 is the width and 100 is the height.. 
      //   //
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: Colors.blue,
      //       foregroundColor: Colors.white,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(8.0),
      //       ),
      //     ),
      //     child: const Text('Register'),
      //     onPressed: () {},
      //   ), 
      // ), 
      //---------------------------------------------------------------------------------
      // body: SizedBox.expand(                     // WIDTH AND HEIGHT DOUBLE.INFINITY..  
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: Colors.blue,
      //       foregroundColor: Colors.white,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(8.0),
      //       ),
      //     ),
      //     child: const Text('Register'),
      //     onPressed: () {},
      //   ), 
      // ), 
      //---------------------------------------------------------------------------------
      body: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 200,
          minHeight: 50,
          maxWidth: 200,
          maxHeight: 100,
        ),
        child: SizedBox.shrink(      // WIDTH AND HEIGHT ZERO.. // -- if we again use expand then it will take the size of the screen according to the constraints.. max width and height.. 
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text('Register'),
            onPressed: () {},
          ), 
        ),
      ), 
    );
  }
}
