import 'package:flutter/material.dart';

// card is a widget that is used to create a card with a title, subtitle, and an image.
// there is no option for padding in card widget..  you've to wrap the card in a container and then add padding to the container.
// and also we can't specify the size of card .. like width and height..  we've to wrap the card in a container and then add width and height to the container.

class card_widgets extends StatelessWidget {
  const card_widgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widgets'),
      ),
      body: Center(
        //--------------------------------------------
        // child: Container(
        //   width: double.infinity,
        //   height: 300,
        //   //----------------------------------------
        //   child: Card(
        //     //----------------------------------------
        //     elevation: 10,
        //     shadowColor: Colors.red,
        //     //----------------------------------------
        //     // shape: RoundedRectangleBorder(
        //     //   borderRadius: BorderRadius.circular(20),
        //     // ),

        //     // shape: RoundedRectangleBorder(
        //     //   borderRadius: BorderRadius.only(
        //     //     topLeft: Radius.circular(50),
        //     //     // topRight: Radius.circular(50),
        //     //     // bottomLeft: Radius.circular(50),
        //     //     bottomRight: Radius.circular(50),
        //     //   ),
        //     // ),

        //     // shape: RoundedRectangleBorder(
        //     //   borderRadius: BorderRadius.vertical(
        //     //     // top: Radius.circular(50),
        //     //     bottom: Radius.circular(50),
        //     //   ),
        //     // ),

        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.horizontal(
        //         // left: Radius.circular(50),
        //         right: Radius.circular(50),
        //       ),
        //     ),

        //     //----------------------------------------
        //     color: Colors.pinkAccent,
        //     margin: EdgeInsets.all(20),    // this is used to add margin to the card..
        //     //----------------------------------------
        //     child: Padding(
        //       padding: const EdgeInsets.all(20.0),
        //       //----------------------------------------
        //       child: Text('Card Widgets', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold) ,),
        //     ),
        //   ),
        // ),
        //--------------------------------------------
        // -- A separte example of card.. 
        child: Card(
          // borderOnForeground: true,       // border will appeared in front of the image..  
          borderOnForeground: false,      // border will not appeared in front of the image..  
          clipBehavior: Clip.hardEdge,    // this is used to clip the image..  the image will clip accroding to the border..  
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(100.0),
            ), 
            side: BorderSide(color: Colors.green, width: 20.0),
          ), 
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/image/girlPhoto.png', width: 250),
          ), 
        ),
      ),
    );
  }
}
