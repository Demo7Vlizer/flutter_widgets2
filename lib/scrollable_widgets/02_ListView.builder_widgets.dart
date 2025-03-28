import 'package:flutter/material.dart';

// ListView containing thousand elements .. erespect your number of display on the screen.. it'll create thousand elements keep them ready in memory.  to get reader on the    screen..
// ListView.Builder - containing thousand elements instead of creating those very elements .. it'll only create  the elements that your screen can display..  as we scroll up and down.. elements are creating as required..  hence it is called.. onDemand or lazyLoading item..
// As we scroll up and down items are getting created based on requirements.. this type of concept that's called loading onDemand and lazyLoading..
// use of listView.builder is for large inifite of elements   because it's specially made with optimization of memory and performence..
// ListView has the visible area which is called viewport where items are displayed. cacheExtend allows us to decide the area.. before and after the visible area.. cache the item that are about to become visible when the user scroll up and down.
// in other hand listView generated all the items in the memory.. 

class ListViewBuilder_widgets extends StatelessWidget {
  const ListViewBuilder_widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning ListView.Builder'), 
      ),
      // body: ListView.builder(
      //   // itemCount: 4,             // this is for how much item we want show in list of items..

      //   itemBuilder: (BuildContext context, int index) {
      //     return Card(
      //       child: ListTile(
      //         title: Text('Item $index'),
      //       ),
      //     );
      //   },
      // ),
      //------------------------------------------------------------
      body: ListView.builder(

        // cacheExtent: 0,
        cacheExtent: 6000, // this will store the remaining list of item are not showing.. it'll store in memory.. additional some items are showing.. in display.. 

        itemBuilder: (BuildContext context, int index){
          return getItem(index);
      }
      )
      //------------------------------------------------------------------------
      // body: ListView.builder(
      //   itemBuilder: (BuildContext context, init index) {
      //     return ListTile(
      //       leadaing: CircleAvatar(
      //         backgroundImage: AssetImage(
      //           user[index].image,
      //         ),
      //       ),
      //       title: Text(user[index].name),
      //       subtitle: Text(user[index].profession),
      //     );
      //   },
      // ),
    );
  }
}

Widget getItem(int index) {
  print("getItem called $index");
  return Container(
    margin: const EdgeInsets.all(16),
    alignment: Alignment.center,
    height: 200,
    color: Colors.cyanAccent,
    child: Text('Item $index', style: const TextStyle(fontSize: 26)),
  );
}
