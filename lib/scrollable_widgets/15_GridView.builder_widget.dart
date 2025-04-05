import 'package:flutter/material.dart';

//-- When gridView scroll vertically.. and then that direction is the main Axis.. and then horizontal direction is cross Axis..  \
// -- When gridView scroll horizontally.. and then that direction is the main Axis.. and then vertical direction is cross Axis..  ---
//--------------------------------------------------------------------------------------
// that almost all application deal with dynamic data that comes from device locally or remote data like firebase or other areas.. when such a data  need to be shown on Ui as a grid the gridView builder is the best option to use..
// -- GridView builder is the name constructor.. from gridView class.. which is specially made to display dynamic data as two dimensional .. scrollable array of widget that are created on demand..
// --  this constructor.. appropriate for gridView with large or infinite number of children.. this is because builer is called only for those children.. that are visible on the screen

class GridViewBuilder extends StatelessWidget {
  // const GridViewBuilder({Key? key}) : super(key: key);
  GridViewBuilder({super.key});

  final List<String> imageList = [
    'assets/image/face1.PNG',
    'assets/image/face2.PNG',
    'assets/image/face3.PNG',
    'assets/image/face4.PNG',
    'assets/image/food.png',
    'assets/image/girlPhoto.png'
        'assets/image/face1.PNG',
    'assets/image/face2.PNG',
    'assets/image/face3.PNG',
    'assets/image/face4.PNG',
    'assets/image/food.png',
    'assets/image/girlPhoto.png'
        'assets/image/face1.PNG',
    'assets/image/face2.PNG',
    'assets/image/face3.PNG',
    'assets/image/face4.PNG',
    'assets/image/food.png',
    'assets/image/girlPhoto.png'
        'assets/image/face1.PNG',
    'assets/image/face2.PNG',
    'assets/image/face3.PNG',
    'assets/image/face4.PNG',
    'assets/image/food.png',
    'assets/image/girlPhoto.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('GridView Builder')),
        body: GridView.builder(
          itemCount: imageList.length, // how many tiles or widget in each row..

          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              imageList[index],
              fit: BoxFit.cover,
            );
          },
//------------------------------------------------------------------------------------------
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3,     // three tiles in cross Axis or each in row.. ..
          //     mainAxisSpacing: 16,
          //     crossAxisSpacing: 4,
          //     // childAspectRatio: 1,
          //     // childAspectRatio: 0.5,
          //     mainAxisExtent: 100,           // each tile has got 100 pixels size.. 
          //     ), 
//-------------------------------------------------------------------------------------------

          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,   // it's mean I want to 300 maximum width here for the tiles..  

            mainAxisSpacing: 16,
            crossAxisSpacing: 16,

            // childAspectRatio: ,
            // mainAxisExtent: ,
          ),

          padding: EdgeInsets.all(16),
          scrollDirection: Axis.horizontal,

          reverse: true,

          // physics: ClampingScrollPhysics(),
          physics: BouncingScrollPhysics(),

          // controller: ,
          
          // cacheExtent: ,


        ));
  }
}
