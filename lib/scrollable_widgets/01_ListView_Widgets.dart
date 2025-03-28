import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_widgets/19_sizedBox_widgets.dart';

//ListView.builder is the name of constructor.. from listView class and  it creates onDemand scrollable list of widgets.. 
// ListView containing thousand elements .. erespect your number of display on the screen.. it'll create thousand elements keep them ready in memory.  to get reader on the    screen..  
// ListView.Builder - containing thousand elements instead of creating those very elements .. it'll only create  the elements that your screen can display..  as we scroll up and down.. elements are creating as required..  hence it is called.. onDemand or lazyLoading item..
// onDemand ---
// Lazy loading.. item in the  list..   --- 

class ListView_Widgets extends StatelessWidget {
  const ListView_Widgets({Key? key}) : super(key: key);

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('learning ListView')),

      // body: SizedBox(    // for taking the size of listView how much in come.. 
        // height: 500,
        // body: ListView(
          // scrollDirection: Axis.vertical,   // this is byDefault ..
          // scrollDirection: Axis.horizontal,
        
          // children: [
          //   Container(height: 250, color: Colors.green),
          //   Container(height: 250, color: Colors.blue),
          //   Container(height: 250, color: Colors.red),
          //   Container(height: 250, color: Colors.orange),
          //   Container(height: 250, color: Colors.purple),
          //   Container(height: 250, color: Colors.cyan),
            //---------------------------------------------------------
          //   scrollDirection: Axis.vertical,
          //   // reverse: false, 
          //   reverse: true,          // this will reverse the order of the listView.. items.. 
          //   // physics: const ClampingScrollPhysics(),
          //   // physics: const NeverScrollableScrollPhysics(),     // after this list View is not scrolling.. 
          //   physics: const BouncingScrollPhysics(),     // this will give us bouncing effect when we're scrolling.. 
          //   padding: const EdgeInsets.all(20),
          //   children: [
          //   Container(
          //     alignment: Alignment.center,
          //     margin: const EdgeInsets.all(16),
          //     color: Colors.blue.shade100,
          //     height: 200,
          //     child: const Text('Item 1', style: TextStyle(fontSize: 30),),
          //   ),
          //   Container(
          //     alignment: Alignment.center,
          //     margin: const EdgeInsets.all(16),
          //     color: Colors.blue.shade100,
          //     height: 200,
          //     child: const Text('Item 2', style: TextStyle(fontSize: 30),),
          //   ),
          //   Container(
          //     alignment: Alignment.center,
          //     margin: const EdgeInsets.all(16),
          //     color: Colors.blue.shade100,
          //     height: 200,
          //     child: const Text('Item 3', style: TextStyle(fontSize: 30),),
          //   ),
          //   Container(
          //     alignment: Alignment.center,
          //     margin: const EdgeInsets.all(16),
          //     color: Colors.blue.shade100,
          //     height: 200,
          //     child: const Text('Item 4', style: TextStyle(fontSize: 30),),
          //   ),
          //   Container(
          //     alignment: Alignment.center,
          //     margin: const EdgeInsets.all(16),
          //     color: Colors.blue.shade100,
          //     height: 200,
          //     child: const Text('Item 5', style: TextStyle(fontSize: 30),),
          //   ),
          // ],
            
        // ),
         //-----------------------------------------------------------------
           body:Container(
            margin: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              border: Border.all(color:Colors.black)
            ),
             child: ListView(
              // shrinkWrap: false,
              shrinkWrap: true,           // it's work as like felxible - it take as much space as it needs.. 

              // itemExtent: 200,    // each item take 200 height equally.. 
              prototypeItem: const SizedBox(width: 200, height: 300),   // ths is also working same as like.. itemExtent.. 
              primary: true,    // giving a priority to the srollVew  
              // controller: ,
              // cacheExtent: ,
              // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,     //  when you're scrolling listView the keyboard is disappear. 

              // addAutomaticKeeAlives: ,
              // addRepaintBoundaries; ,   // this is for item ready for garbage collection.. when scroll out of visible area.. 

               
              children: [
                const Padding(padding: const EdgeInsets.all(2), child:TextField()), 
                Container(height: 100, color: Colors.green),
                Container(height: 100, color: Colors.orange),
                Container(height: 100, color: Colors.blue),
                Container(height: 100, color: Colors.red),
                Container(height: 100, color: Colors.purple),
                Container(height: 100, color: Colors.yellow),

              ],
             ),
           )
      // ),
    );
  }
}
