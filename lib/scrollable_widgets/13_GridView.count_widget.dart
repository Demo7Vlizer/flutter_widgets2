import 'package:flutter/material.dart';

// --  GridView.count - if we have a less of number child.. then it is recommended that you should use gridView.count.. 
// -- GridView.builder.. - But as your number of child increases.. or number of child depend on some place.. or getting the child dynamecally.. from your dataBase... or firebase so you should use girdView.builder.. 
// GridView.count is the name constructor.. gridView class .. that allows us to create two dimensional.. scrollable array of widget.. in the form of grid.. where each grid can have maximum extent in cross Axis.. and based on this extent flutter will decide the number of grids in a cross Axis..  
class GridViewTest extends StatelessWidget {
  const GridViewTest({Key? key}) : super(key: key);

  //  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView.count')),

      //
      body:GridView.count(
        crossAxisCount: 2,

        //
        padding: EdgeInsets.all(16),

        mainAxisSpacing: 20,
        crossAxisSpacing: 10,

        scrollDirection: Axis.vertical, 
        reverse: true, 
        // physics: ClampingScrollPhysics(),
        physics: BouncingScrollPhysics(),


        cacheExtent: 500, 

        childAspectRatio: 1,    // from this we can control height of the grid.. incase of vertical and horizontal.. 

        // controller: ,  //-- using controller we can control scrolling of gridView..  programmactically.. 

        children: [
          Image.asset('assets/image/face1.PNG', fit:BoxFit.cover),
          Image.asset('assets/image/face2.PNG', fit:BoxFit.cover),
          Image.asset('assets/image/face3.PNG', fit:BoxFit.cover),
          Image.asset('assets/image/face4.PNG', fit:BoxFit.cover),
          Image.asset('assets/image/food.png', fit:BoxFit.cover),
          Image.asset('assets/image/girlPhoto.png', fit:BoxFit.cover),
          Image.asset('assets/image/face1.PNG', fit:BoxFit.cover),
          Image.asset('assets/image/face2.PNG', fit:BoxFit.cover),
          Image.asset('assets/image/face3.PNG', fit:BoxFit.cover),
          Image.asset('assets/image/face4.PNG', fit:BoxFit.cover),
          Image.asset('assets/image/food.png', fit:BoxFit.cover),
          Image.asset('assets/image/girlPhoto.png', fit:BoxFit.cover),
          Image.asset('assets/image/face1.PNG', fit:BoxFit.cover),
          Image.asset('assets/image/face2.PNG', fit:BoxFit.cover),
          Image.asset('assets/image/face3.PNG', fit:BoxFit.cover),
          Image.asset('assets/image/face4.PNG', fit:BoxFit.cover),
          Image.asset('assets/image/food.png', fit:BoxFit.cover),
          Image.asset('assets/image/girlPhoto.png', fit:BoxFit.cover),
        ],
      )
    );
  }
}
