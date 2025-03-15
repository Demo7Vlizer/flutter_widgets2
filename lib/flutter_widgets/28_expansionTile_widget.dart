import 'package:flutter/material.dart';

class ExpansionTile_widget extends StatelessWidget {
  const ExpansionTile_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: ListView(
      //   children: const [
      //     //
      //     ExpansionTile(
      //       leading:
      //           CircleAvatar(backgroundImage: AssetImage('assets/image/face4.PNG')),
      //       title: Text('Siddharth Patil'),
      //       // trailing: const Icon(Icons.check),
      //       //---------------
      //       // controlAffinity: ListTileControlAffinity.leading,
      //       // controlAffinity: ListTileControlAffinity.trailing,
      //       // controlAffinity: ListTileControlAffinity.platform,    // this is a default value..

      //       //
      //       children: [
      //         Text(
      //             'He is Struggling Youtuber, running a channel called Flutter'),
      //         Text('Don\'t forget to like, share & subscribe'),
      //         Icon(Icons.thumb_up),
      //       ],
      //       //----------------------------------------------------
      //       // initiallyExpanded: true,   // it's initially expanded..
      //       // tilePadding: EdgeInsets.all(40),   // this is for tile padding..
      //       // childrenPadding: EdgeInsets.all(50),   //inside the expansion tile.. it'll give padding..
      //       //---------------------
      //       expandedAlignment: Alignment.topLeft,   // default is center..
      //       expandedCrossAxisAlignment: CrossAxisAlignment.start,
      //       //--------------------------------

      //     ),
      //   ],
      // ),
      //----------------------------------------------------------------------------------------------------------------------------
      //-- Different Types of colors works in expansion tile..
      body: ListView(
        children: [
          //
          ExpansionTile(
            leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/image/face4.PNG')),
            title: const Text('Siddharth Patil'),
            // trailing: const Icon(Icons.check),

            children: const [
              Text(
                  'He is Struggling Youtuber, running a channel called Flutter'),
              Text('Don\'t forget to like, share & subscribe'),
              Icon(Icons.thumb_up),
            ],
            //--------------------------------
            collapsedBackgroundColor: Colors.red,
            collapsedTextColor: Colors.black,
            collapsedIconColor: Colors.white,
            //--------------------------------
            backgroundColor: Colors.blue,
            textColor: Colors.white,
            iconColor: Colors.red,
            //--------------------------------
            onExpansionChanged: (bool expaded) {
              if (expaded) {  
                print('expanded');
              } else {
                print('collapsed');
              }
            },
            //--------------------------------
          ),
        ],
      ),
    );
  }
}
