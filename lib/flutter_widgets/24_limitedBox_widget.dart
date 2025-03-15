import 'package:flutter/material.dart';

// LimtedBox is a widget that constrains the size of the child widget..  if it is unbounded then it will overflow..

class LimitedBox_widget extends StatelessWidget {
  const LimitedBox_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // we know that scaffold has bounded height and width..
      appBar: AppBar(),

      //
      // body: LimitedBox(
      //   maxHeight: 300,  // it'll aftere taking when we're using row and column because row and column are unbounded widgets..
      //   child: Container(
      //     height: 500,           // this will be getting height.. not from the limited box.. because the limited box is bounded by the scaffold.. so we've to use unbounded widget like row and column..
      //     color: Colors.orange,
      //   ),
      // ),
      //------------------------------------------------------------------------------------------------
      // body: Column(
      //   children: [
      //     LimitedBox(
      //       maxHeight:
      //           300, // now this is taking from here nor from the container height..  because we're using column so that is unbounded widget..
      //       child: Container(
      //         height:
      //             900, // now it's ignored , not it's taking from the  limited box..  that height..
      //         color: Colors.orange,
      //       ),
      //     ),
      //   ],
      // ),

      //------------------------------------------------------------------------------------------------
      //-- how much difference between the limited box and the sized box..
      // body: const LimitedBox(  // now we're using inside scaffold so that it's bounded height and width  so this won't workout here.. this height and widht..
      // maxHeight: 20,
      //   body: const SizedBox(
      //     height: 85,             // the work will be clipped..  from the bottom..
      //     // width: 20,
      //     child: Text(
      //       'Hello',
      //       style: TextStyle(fontSize: 100),
      //     ), // Text
      // ),
      //------------------------------------------------------------------------------------------------
      body: ListView.builder(   // this also has unbounded height.. .. 
          itemCount: 10,
          itemBuilder: (context, index) {
            // return SizedBox(
              // height: 200,         // all the box will be having the 200 pixel height.. 
              // width: 100,
              return LimitedBox(      // now this will taking limitation height to the container.. after this you'll not able to give more height to the container..  if you're beyond the limited box then it'll won't workout.. to  height in contianer.. 
                maxHeight: 300,    // now incase of limited box..  it'll not taking the height from the limited box.. it'll take from the container..  
              child: Container(
                margin: const EdgeInsets.all(16),
                alignment: Alignment.center,
                height: 100,                 // while using the limited box..  it'll take the maximum height from the limited box..  after 300 pixel height it'll then not working.. if we're putting 400 pixel height in container then it'll not work..  
                color: Colors.orange,
                child: Text('${index + 1}'),
              ),
            ); 
          }), 
    );
  }
}
