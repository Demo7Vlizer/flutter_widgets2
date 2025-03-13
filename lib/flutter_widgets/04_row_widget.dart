import 'package:flutter/material.dart';

class row_widget extends StatelessWidget {
  const row_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        //
        body: Container(
          color: Colors.grey,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.center,
            //-----------------------------------------------------
            // mainAxisSize: MainAxisSize.min,
            mainAxisSize: MainAxisSize.max,             //-- this is default one .. 
            //-----------------------------------------------------------
            // crossAxisAlignment: CrossAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            //-----------------------------------------------------------
            // textDirection: TextDirection.rtl,     //-- from left to right
            // textDirection: TextDirection.ltr,    //-- From top to bottom
            //-----------------------------------------------------------
            
            //-----------------------------------------------------------
            // textDirection: TextDirection.rtl,     //-- from right to left
            // textDirection: TextDirection.ltr,    //-- From left to right 
            children: [
              Container(width: 80, height: 30, color: Colors.orange),
              SizedBox(width: 10),
              Container(width: 80, height: 80, color: Colors.green),
              SizedBox(width: 10),
              Container(width: 80, height: 50, color: Colors.red),
            ]
          ),
        ),
      ),
    );
  }
}