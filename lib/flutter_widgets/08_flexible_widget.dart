import 'package:flutter/material.dart';

class flexible_widget extends StatelessWidget {
  const flexible_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            // Container(
            //   width: double.infinity,
            //   height: 200,
            //   color: Colors.orange,
            // ), // Container

            // Flexible(                 // flexible widget is used to make the container to take the remaining space and also accordingly to the screen size it'll flexible..
            //   child: Container(
            //     width: double.infinity,
            //     height: 200,             // it'll respecting the height of the container and also  flexible..
            //     color: Colors.green,
            //   ),
            // ),
            //-------------------------------------------
            // Flexible(
            //   flex: 1,
            //   child: Container(
            //     width: double.infinity,
            //     // height: 200,  // when we're taking this will according to the height of the container it'll adjust and when the shrink the screen it's then this will behave accordingly flex property eg.. flex: 1, and flex: 2,
            //     color: Colors.green,
            //   ), // Container
            // ), // Flexible

            // Flexible(
            //   flex:
            //       2, //-- this will take double size than the other flexible widget
            //   child: Container(
            //     width: double.infinity,
            //     // height: 200,            // After shrinking the screen it'll adjust the size of the container accordingly and behave as we given flex value.. so this will bigger than the other flexible widget
            //     color: Colors.blue,
            //   ),
            // ),
            //-------------------------------------------
            // Container(
            //   width: double.infinity,
            //   height: 200,
            //   color: Colors.cyan,
            // ), // Container

            // Flexible(
            //   // fit: FlexFit.loose,   // this is default value..
            //   fit: FlexFit
            //       .tight, // this will take the full size of the container.. this will not respect the height of the container..
            //   child: Container(
            //     width: double.infinity,
            //     height: 200,
            //     color: Colors.red,
            //   ),
            // ),
            //-------------------------------------------
            // Expanded(
            //   child: Container(
            //     width: double.infinity,
            //     height: 200,
            //     color: Colors.cyan,
            //   ), // Container
            // ), // Expanded

            // Flexible(
            //   fit: FlexFit.tight,
            //   child: Container(
            //     width: double.infinity,
            //     height: 200,
            //     color: Colors.red,
            //   ), // Container
            // ),
            //-------------------------------------------
            //-- Difference between Expanded and Flexible..
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
            ), // Container

            Flexible(                // comment this flexible widget and see the difference between expanded and flexible.. and then that third expanded widget will take the full size of the screen..
              child: Container(
                width: double.infinity,
                // height: 100,
                color: Colors.orange,
              ), // Container
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                height: 100,
                color: Colors.red,
              ), // Container
            ), // Expanded
          ],
        ),
      ),
    );
  }
}
