import 'package:flutter/material.dart';

class constrainedBox_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        // child: ConstrainedBox(
        //   constraints: BoxConstraints(
        //     minWidth: 100,
        //     minHeight: 100,
        //     maxWidth: 300,
        //     maxHeight: 300,
        //   ),
        //   child: Container(
        //     width: 150,                //-- that lies between the constraints.. max width and height ..
        //     height: 200,                //-- that lies between the constraints.. max width and height ..
        //     color: Colors.blue,
        //   ),
        // ),
        //------------------------------------------------------------------------------------------------
        // child: SizedBox(   //-?- entire size of the constrained box.. is managed by the sizedbox..  .// this will getting more importance ..
        //   width: 100,         // -- and getting ignored..  all the constraints are getting ignored..  and container sized and width ignored.. in front of sizedbox..
        //   height: 150,
        //   child: ConstrainedBox(
        //     constraints: BoxConstraints(
        //       minWidth: 100,
        //       minHeight: 100,
        //       maxWidth: 300,
        //       maxHeight: 300,
        //     ),
        //     child: Container(
        //       width: 150,                //-- that lies between the constraints.. max width and height ..
        //       height: 200,                //-- that lies between the constraints.. max width and height ..
        //       color: Colors.blue,
        //     ),
        //   ),
        // ),
        //------------------------------------------------------------------------------------------------
        child: ConstrainedBox(
          constraints: const BoxConstraints(   // again this will consider the max width and height.. .. and the child constraints will be ignored..
            // maxWidth: 100,
            minWidth: 1000,                // this will be ignored .. and after that the child constraints will be considered.. around 300 width..
            maxHeight: 100,
          ), // BoxConstraints
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
              maxHeight: 500,
            ), // BoxConstraints
            child: Container(
              width: 900,
              height: 800,
              color: Colors.orange,
            ), // Container
          ), // ConstrainedBox
        ), // Constrained
        //------------------------------------------------------------------------------------------------
      ),
    );
  }
}
