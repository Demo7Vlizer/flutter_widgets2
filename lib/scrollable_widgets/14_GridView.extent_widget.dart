import 'package:flutter/material.dart';

// GridView.count is the name constructor.. gridView class .. that allows us to create two dimensional.. scrollable array of widget.. in the form of grid.. where each grid can have maximum extent in cross Axis.. and based on this extent flutter will decide the number of grids in a cross Axis..
// horizontal \ is  cross Axis... 
// Vertical -- is represents the mainAxis.. 
//--------------------------------------------
//-- On other hand..  when your gridView has a scroll Direction.. horizontal..  then that direction is represents the main-Aixs..  
//-- On other hand..  when your gridView has a scroll Direction.. vertical..  then that direction is represents the cross-Aixs..  

class GridViewExtentTest extends StatelessWidget {
  // const GridViewExtentTest ({Key ? key}) : super (key: key);
  const GridViewExtentTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView extent.. ')),

      body: GridView.extent(

        maxCrossAxisExtent: 150,  // it is the maximum extent  that it's the maximum size that flutter.. provider to your tile.. based on the available.. sapce.. in a cross Axis flutter will decide.. the extent. . that is size.. and it tries to provide.. equal extent each tile.. so that you should have nice symetric on your app screen.

        mainAxisSpacing: 16, 
        crossAxisSpacing: 8, 

        padding: EdgeInsets.all(20),
        
        scrollDirection: Axis.horizontal,

        reverse: true,

        childAspectRatio: 1,    // -- it s basically use to control.. the size of tile in main Axis..  

        cacheExtent: 300,

        children: [
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
          myBox(),
        ],
      )
    );
  }
}

Widget myBox() {
  return Container(
    color: Colors.blue,
    margin: EdgeInsets.all(8),
  );
}
