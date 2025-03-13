import 'package:flutter/material.dart';

class collumn_widget extends StatelessWidget {
  const collumn_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Colors.grey,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.start,   //-- this is default one .. 
            // mainAxisAlignment: MainAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            //---------------------------------------------------------
            // mainAxisSize: MainAxisSize.max,
            mainAxisSize: MainAxisSize.min,
            //-----------------------------------------------------
            // crossAxisAlignment: CrossAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            //----------------------------------------------------- 
            // verticalDirection: VerticalDirection.down,
            verticalDirection: VerticalDirection.up,       //-- it'll goes down and also reverse the order of the children ..  
            //----------------------------------------------------- 
            
            
            children: [
              Container(color: Colors.orange, width: 50, height: 80),
              SizedBox(height: 4),
              Container(color: Colors.green, width: 100, height: 30),
              SizedBox(height: 4),
              Container(color: Colors.red, width: 30, height: 80),
            ],
          ),
        ),
      ),
    );
  }
} 