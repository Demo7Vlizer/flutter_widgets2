import 'package:flutter/material.dart';

//-Expanding the UI element to fill the available space along the main axis
// Dividing screen in desired parts, using the flex property
// Expanding or narrowing the component to fit in the available space\
// Acquiring remaining space for the Text widget
// Solving unbounded height problem for the ListView
//-- in row horizontal directin is the main axis
//-- in column vertical directin is the main axis

class expanded_widget extends StatelessWidget {
  const expanded_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Row(
        // body: Column(
          children: [
            // Container(
            //   height: 50,
            //   width: 50,
            //   color: Colors.cyan,
            // ),
            // Expanded(
            //   child: Container(
            //     height:
            //         50, // this height is not working because the expanded widget is taking all the available space
            //     width: 50,
            //     color: Colors.orange,
            //   ),
            // ),
            // Container(
            //   height: 50,
            //   width: 50,
            //   color: Colors.green,
            // ),
            //-------------------------------------------
            // Expanded(
            //   flex:2, // this will get double space than the other expanded widgets
            //   child: Container(
            //     height: 50,
            //     color: Colors.cyan,
            //   ),
            // ),
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     height: 50,
            //     color: Colors.orange,
            //   ),
            // ),
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     height: 50,
            //     color: Colors.green,
            //   ),
            // ),
            //-------------------------------------------
            // Expanded(      //-- this will resolve the overflow error because the image is too large
            //   child: Image.asset('assets/diagram/nine_alignment_property.png'),

            // Expanded(         //-- this will make the image to take the full width of the screen
            //   child: Image.asset('assets/image/girlPhoto.png'),
            // ),
            // Expanded(          //-- this will make the image to take the full width of the screen
            //   child: Image.asset('assets/image/girlPhoto.png'),
            // ),
            //-------------------------------------------
            // Container(
            //   width: 250,
            //   child: Image.asset('assets/image/girlPhoto.png'),
            // ), // Container
            // SizedBox(width: 10),

            // Expanded(
            //   child: const Text('The ladies is wearing a dark blue coat'),
            // ), // Text
            //-------------------------------------------
            //-- Only this for collumn 
            // Container(
            //   width: double.infinity,
            //   height: 150,
            //   color: Colors.cyan,
            // ), // Container

            // Expanded(
            //   // this will resolve the unbounded height problem for the ListView
            //   child: ListView.builder(
            //     itemCount: 50,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         title: Text('Item $index'),
            //       ); // ListTile
            //     },
            //   ),
            // ),
            //-------------------------------------------
            Container(
              height: 100,
              width: 100,
              color: Colors.orange,
            ), // Container

            Expanded(                   //-- after then it'll fix by using expanded widget .. because of the padding
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.purple,
                ),
              ), 
            ),
            //'''''''''''''''''''''''''''''''''' 
            // Padding(                             //-- this showing.. error 
            //   padding: EdgeInsets.all(16),
            //   child: Expanded(
            //     child: Container(
            //       height: 100,
            //       width: 100,
            //       color: Colors.purple,
            //     ),
            //   ), 
            // ),
          //-------------------------------------------
          ],
        ),
      ),
    );
  }
}
