import 'package:flutter/material.dart';

class FractionallySizedBox_widget extends StatelessWidget {
  const FractionallySizedBox_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      // body: Center(
      //   child: FractionallySizedBox(
      //     // widthFactor: 0.7,             //-- 0.7 indicates here 70% of the width available of the screen..
      //     widthFactor: 0.5,             // -- it's 50% of the width available of the screen..  and 1 is 100%..  and 0.7 is 70%..
      //     // heightFactor: 0.5,
      //     child: ElevatedButton(
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Colors.blue,
      //         foregroundColor: Colors.white,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(8.0),
      //         ),
      //       ),
      //       child: const Text('Click Me'),
      //       onPressed: () {},
      //     ),
      //   ),
      // ),
      //------------------------------------------------------------------------------------------------
      //-- We also give space between the widgets..  in height and width..  .. fractionallysizedbox.. ..
      // body: Column(
      //   children: [
      //     //
      //     Container(
      //       height: 200,
      //       color: Colors.orange,
      //     ),

      //     Flexible(
      //       // make sure when we're using this inside row and collumn we should've to wrap the fractionallysizedbox in flexible widget.. either it'll through error.
      //       child: FractionallySizedBox(
      //         heightFactor:
      //             0.2, // 0.2 means 20% of the height available of the screen..
      //         // child: Container(
      //         //   color: Colors.blue,
      //         // ),
      //       ),
      //     ),

      //     Container(
      //       height: 200,
      //       color: Colors.green,
      //     ),
      //   ],
      // ),
      //------------------------------------------------------------------------------------------------
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.orange,

          child: FractionallySizedBox(
            // widthFactor: 0.6,               // 0.6 means 60% of the width available of the screen.. of the total given width of the container..   
            widthFactor: 1,
            heightFactor: 0.4,             // 0.4 means 40% of the height available of the screen.. of the total given height of the  container..  
            alignment: Alignment.topLeft,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text('Click Me'),
              onPressed: () {},
            ), // ElevatedButton
          ), // FractionallySizedBox
        ), // Container
      ), // Center
    );
  }
}
