import 'package:flutter/material.dart';

class ListTile_widget extends StatelessWidget {
  const ListTile_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: ListView(
      //   children: [
      //     //
      //     ListTile(
      //       leading:
      //           const CircleAvatar(backgroundImage: AssetImage('assets/image/face4.PNG')),
      //       title: const Text('Siddharth Patil'),
      //       subtitle: const Text('Flutter Developer'),
      //       trailing: const Icon(Icons.navigate_next),
      //       dense: true,
      //       isThreeLine: true, // this is giving little bit more space for the bottom, subtitle..  and the subtitle is required..
      //       enabled: true,  // this is for the tap and long press..
      //       onTap: () {
      //         print('onTap');
      //       },
      //       onLongPress: () {
      //         print('onLongPress');
      //       },
      //     ),

      //     //
      //     const ListTile(
      //       leading: CircleAvatar(
      //         child: Text('A'),
      //       ), // CircleAvatar
      //       title: Text('Alex Martin'),
      //       subtitle: Text('Designer'),
      //       trailing: Icon(Icons.navigate_next),
      //       dense: false,      // this is looking little bit bigger than the first one because of dense is false .. and there is true dense..
      //     ),
      //   ],
      // ),
      //-----------------------------------------------------------------------------------------------------------------------------------------------
      //-- Another Example.. how color behave here..
      // body: ListView(
      //   children: const [
      //     //
      //     ListTile(
      //       leading: Icon(Icons.person),
      //       // leading:
      //           // CircleAvatar(backgroundImage: AssetImage('assets/image/face3.PNG')),
      //       title: Text('Siddharth Patil'),
      //       subtitle: Text('Flutter Developer'),
      //       trailing: Icon(Icons.navigate_next),

      //       //
      //       iconColor: Colors.red,     // this is for icon

      //       //
      //       textColor: Colors.blue,    // this is for text

      //       //
      //       tileColor: Colors.black,   // this is for the background color of the list tile..
      //     ),
      //   ],
      // ),
      //-----------------------------------------------------------------------------------------------------------------------------------------------
      // body: ListView(
      //   children: [
      //     ListTile(
      //       leading: Icon(Icons.person),

      //       title: Text('Siddharth Patil'),
      //       subtitle: Text('Flutter Developer'),
      //       trailing: Icon(Icons.navigate_next),

      //       selected:
      //           true, // if we're making it false.. then it will not show the selected color..
      //       //
      //       selectedTileColor: Colors.red,

      //       //
      //       selectedColor: Colors.white,
      //     ),
      //   ],
      // ),
      //-----------------------------------------------------------------------------------------------------------------------------------------------
      // body: ListView(children: [
      //   ListTile(
      //     leading: Icon(Icons.code),
      //     title: Text('Siddharth Patil'),
      //     subtitle: Text('Flutter Developer'),
      //     trailing: Icon(Icons.navigate_next),
      //     onTap: () {},
      //     hoverColor: Colors.orange,
      //     focusColor: Colors.green,
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.restaurant),
      //     title: Text('Mark Paul'),
      //     subtitle: Text('Restaurant Owner'),
      //     trailing: Icon(Icons.navigate_next),
      //     onTap: () {},
      //     hoverColor: Colors.orange,
      //     focusColor: Colors.green,
      //   ),
      // ]),
      //---------------------------------------------------------------------------------------------------------------
      // body: ListView(
      //   children: [
      //     //
      //     ListTile(
      //       leading: const CircleAvatar(
      //           backgroundImage: AssetImage('assets/image/face4.PNG')),
      //       title: const Text('Siddharth Patil'),
      //       subtitle: const Text('Flutter Developer'),
      //       trailing: const Icon(Icons.navigate_next),
      //       //
      //       // contentPadding: EdgeInsets.all(10),     // this is for the padding of the list tile.. left and right..
      //       // horizontalTitleGap: 100,            // title and subtitle will goes in center..
      //       dense: true,
      //       // minVerticalPadding: 17,
      //       minLeadingWidth: 20,
      //       tileColor: Colors.red,
      //       shape:
      //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      //       // style: ListTileStyle.list,
      //       //-----------------------------------------
      //       style: ListTileStyle.drawer,
      //       // mouseCursor: SystemMouseCursors.click ,
      //       // mouseCursor: SystemMouseCursors.resizeUpDown,
      //       // mouseCursor: SystemMouseCursors.forbidden,
      //       mouseCursor: SystemMouseCursors.cell,
      //     ), // ListTile
      //   ],
      // ),
      //---------------------------------------------------------------------------------------------------------------
      //-- ListTile.divideTiles...
      body: ListView(   
        children: ListTile.divideTiles(  // this will give us the divider between the list tile..
          context: context,
          color: Colors.blue,
          tiles: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/image/face4.PNG'),
              ),
              title: Text('Siddharth Patil'),
              subtitle: Text('Flutter Developer'),
              trailing: Icon(Icons.navigate_next),
            ),  
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/image/face3.PNG'),
              ),
              title: Text('Siddharth Patil'),
              subtitle: Text('Flutter Developer'),
              trailing: Icon(Icons.navigate_next),
            ),  
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/image/face2.PNG'),
              ),
              title: Text('Siddharth Patil'),
              subtitle: Text('Flutter Developer'),
              trailing: Icon(Icons.navigate_next),
            ),  
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/image/face1.PNG'),
              ),
              title: Text('Siddharth Patil'),
              subtitle: Text('Flutter Developer'),
              trailing: Icon(Icons.navigate_next),
            ),    
          ],
        ).toList(),
      ), // ListView
    );
  }
}
