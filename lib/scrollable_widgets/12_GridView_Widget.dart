import 'package:flutter/material.dart';

// GridView Widget is a scrollable two dimensional array of widget.. commonly used to display.. collection of items like images.. or cards .. in a grid layout..

class GridView_Widget extends StatelessWidget {
  const GridView_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView Widget.. ')),
      body: GridView(
        // gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        //   // crossAxisCount: 2,              // how much item you want in a single row.. 
        //   // mainAxisSpacing: 16,               // for spacing.. 
        //   // crossAxisSpacing: 8,         // for spacing.. 
        //   // childAspectRatio:1,             // giving height.. 
        //   // mainAxisExtent: 100,        // for giving height 
        //   // ),
        gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,   // set width.. according number of tiles come.. how much space available in your corss axis.  
          ),

          padding: EdgeInsets.all(24),
          reverse: true,
          // physics: ClampingScrollPhysics(),
          physics: BouncingScrollPhysics(),

          cacheExtent: 1000,          // in order to hold or keep tiles which are not showing in our screen.. 


        children: [
          myBox(1),
          myBox(2),
          myBox(3),
          myBox(4),
          myBox(5),
          myBox(6),
          myBox(7),
          myBox(8),
          myBox(9),
          myBox(10),
        ],
      ),
    );
  }
}

Widget myBox(int index) {
  return Container(
    margin: const EdgeInsets.all(8),
    color: Colors.blue,
    alignment: Alignment.center,
    child: Text('$index'),
  );
}
