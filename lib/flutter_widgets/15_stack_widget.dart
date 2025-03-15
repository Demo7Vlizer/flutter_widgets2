import 'package:flutter/material.dart';

class stack_widget extends StatelessWidget {
  const stack_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack Widget'),
        ),
        //     body: Stack(
        //   children: [
        //     // orange container
        //     Container(
        //       width: 300,
        //       height: 300,
        //       color: Colors.orange,
        //     ),

        //     // red container
        //     Container(           // this will hide the green container because it is on top of it
        //       width: 100,
        //       height: 100,
        //       color: Colors.red,
        //     ),

        //     // green container
        //     Container(
        //       width: 200,
        //       height: 200,
        //       color: Colors.green,
        //     ),
        //   ],
        // )
        //--------------------------------------------------------------------------------------------------------------------------
        // body: Container(
        //   width: double.infinity,
        //   height: 500,
        //   color: Colors.orange[200],

        // child: Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     // red container
        //     Positioned(
        //       left: 20,
        //       bottom: 30,
        //       child: Container(
        //         width: 300,
        //         height: 300,
        //         color: Colors.red,
        //       ), // Container
        //     ), // Position

        //     // green container
        //     Container(
        //       width: 250,
        //       height: 250,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       width: 200,
        //       height: 200,
        //       color: Colors.blue,
        //     ),
        //   ],
        // ))
        //--------------------------------------------------------------------------------------------------------------------------
        // body: Center(
        //   child: Stack(
        //     clipBehavior: Clip.none,
        //     //
        //     children: [
        //       //
        //       Container(
        //         width: 300,
        //         height: 300,
        //         color: Colors.green[200],
        //       ), // Container

        //       //
        //       Positioned(
        //         left: -20,
        //         bottom: -30,
        //         child: Container(
        //           width: 200,
        //           height: 200,
        //           color: Colors.green,
        //         ), // Container
        //       ), // Positioned
        //     ],
        //   ),
        // ),
        //--------------------------------------------------------------------------------------------------------------------------
        //   body: Container(
        //       width: 400,
        //         height: 400,
        //         color: Colors.blue[200],
        //     child: Stack(
        //       // fit: StackFit.loose,
        //       // fit: StackFit.expand,   // this will make the stack to expand to the size of the parent .. and the fit property only control.. the size of non-positioned widgets not the positioned widgets
        //       textDirection: TextDirection.rtl,  // this will make the stack to be aligned to the right
        //       children: [

        //       Container(
        //         width: 200,
        //         height: 200,
        //         color: Colors.red,
        //       ),

        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.green,
        //         child: Text('Hello', style: TextStyle(color: Colors.white),),
        //       ),

        //       Positioned(
        //         right: 50,
        //         bottom: 10,
        //         child: Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.orange,
        //         ),
        //       ),
        //     ],
        //   ),
        // )
//--------------------------------------------------------------------------------------------------------------------------
// -- let's make something like ..
        body: SizedBox(
          width: double.infinity,
          height: 400,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                'assets/image/food.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.all(16),
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.3),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Kithen Food',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Professional cooking chef',
                        style: TextStyle(fontSize: 13, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -24,
                right: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 24,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ), // Icon
                ), // CircleAvatar
              ),
            ],
          ),
        ));
  }
}
