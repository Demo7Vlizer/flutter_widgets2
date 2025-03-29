import 'package:flutter/material.dart';

//-- SingleChildScrollView is a single child scrolling container that allows us to scroll to the content that is too large to feed on screen..
//-- or it is specially use for displaying  long type of text , images or other widgets .. that take ups lots of vertical space..
//-- or intent to show long list of items  in a scrollable way .. flutter suggests use of listView..
//-- When we need scrollable behaviour only feed the ui perfectly in different sizes or device rotation..  than use SingleChildScrollView
// -- Moreover when we rotate or increasing the size of display the is not showing of overflow..

class SingleChildScrollViewWidget extends StatelessWidget {
  const SingleChildScrollViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollVew Test'),
      ),

      
      body: SingleChildScrollView(

        // scrollDirection: Axis.vertical,         // the default value is ths.. 
        scrollDirection: Axis.horizontal,
        // reverse: false,              // this is byDefault
        reverse: true,                 
        padding: EdgeInsets.all(32),     // ths is for all.. 
        // physics: ClampingScrollPhysics(),
        // physics: BouncingScrollPhysics(),
        physics: const NeverScrollableScrollPhysics(),
        // controller: ,   this property control by programatically.. 
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,


        

        child:  Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter Data'
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              height: 200,
              color: Colors.green
            ),
            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              height: 200,
              color: Colors.orange
            ),
            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              height: 200,
              color: Colors.blue
            ),
            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              height: 200,
              color: Colors.red
            ),
            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              height: 200,
              color: Colors.purple
            )
          ],
        ),
      )
      //-------------------------------------------------------------------------
      //-- now understanding.. to solve the keyboard appearing overflow issues.. in the textField..
      // body: SingleChildScrollView(
      //   child: Column(     // when the keyboard is coming this is showing error.. after wrraping with SingleChildScrollView then the problem will immediately got resolve.. 
      //     children: [
      //       const Padding(
      //         padding: EdgeInsets.all(16),
      //         child: TextField(
      //           decoration: InputDecoration(
      //               border: OutlineInputBorder(), hintText: 'Name'),
      //         ),
      //       ),
      //       const Padding(
      //         padding: EdgeInsets.all(16),
      //         child: TextField(
      //           decoration: InputDecoration(
      //               border: OutlineInputBorder(), hintText: 'Education'),
      //         ),
      //       ),
      //       const Padding(
      //         padding: EdgeInsets.all(16),
      //         child: TextField(
      //           decoration: InputDecoration(
      //               border: OutlineInputBorder(), hintText: 'Email'),
      //         ),
      //       ),
      //       const Padding(
      //         padding: EdgeInsets.all(16),
      //         child: TextField(
      //           decoration: InputDecoration(
      //               border: OutlineInputBorder(), hintText: 'Mobile Number'),
      //         ),
      //       ),
      //       const Padding(
      //         padding: EdgeInsets.all(16),
      //         child: TextField(
      //           decoration: InputDecoration(
      //               border: OutlineInputBorder(), hintText: 'Age'),
      //         ),
      //       ),
      //       ElevatedButton(onPressed: () {}, child: Text('Submit'))
      //     ],
      //   ),
      // ),
    );
  }
}



//-------------------------------------------------------------------------
//-- What is the difference betweeen ListView Vs SingleChildScrollView
/* 
  Basicall both listView and SingleChildScrollView that can be use for scrolling content in applicatin.. than it's similar at first glance.. 
    ## Content PlaceMent.. 
    1) When we use ListView for in this we pass scrolling content directly as child
    .. and for ListView.builder and ListView.separator we use builder function..
    where else in case of singlechildScrollview  we give it a child that takes only one element that why you will use column as a child..for SingleChildScrollView  and place scrolling conent as the children  for ths column.. 

    ## Memory uses & Performance.. 
    2) ListView is design to display large number of child widgets.. 
    .. and the listView.builder and listView.Separator as well as listView.custom is optimize for rendering.. only the visible.. portion.. of list Items.. on the screen.. here item are .. loaded and unloaded as needed as based on position of scrolling.. which has to improve performace and reduce as the memory usage.. 
    .. where as SingleChildScrollView loads all it content at once and consumes more memory  and it's not so efficient.. compare to listView.. 

    ## Child width or height.. 
    3) Incase of listView.. are getting or taking the maximum height and width of the container..  
    .. and in SingleChildScrollView this is getting or  taking minimum height and width if it possible... of the container.. 

    ## Properties.. 
    4)  all are in diagram.. folder.. 
*/
