import 'package:flutter/material.dart';

// spacer widgets will occupy the entire space between  the widgets 
// spacer actualy retruning a expanded widget with given flex value 
// spacer is a widget that don't have a child.. 
// spacer must be used in row or column widgets either it'll through an error 
// spacer is only access in main axis alignment not in cross axis alignment 
// if you're using main axis aligment and also using spacer then it'll respect the spacer and give space to other widgets  and ignore the main axis alignment  
// it is used to create a space between the widgets

class spacer_widgets extends StatelessWidget {
  const spacer_widgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spacer Widgets'),
      ),
      body: Center(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Spacer(flex: 1),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,          
            ),
            Spacer(flex: 1),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Spacer(flex: 2),    // this will occupy the more space as compare to another widgets
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}