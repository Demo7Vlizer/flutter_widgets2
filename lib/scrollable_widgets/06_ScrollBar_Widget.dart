import 'package:flutter/material.dart';

// scrollBar widgets.. helps the user to identify.. how far they have scroll and jump to particular position in a list
// scrollBar mainly has three components child wich reprents the scrollable widgets thubm that indicates which porition of the scrollView which actually visible and the track it is a portion in which thumb moves

class ScrollBar_Widgets extends StatelessWidget {
  const ScrollBar_Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scrollbar Test')),

      //
      body: Scrollbar(
        thumbVisibility: true,       // this help to visible thumb always without scrolling or not.. 
        trackVisibility: true,
        thickness: 30,
        interactive: true,
        radius: Radius.circular(20),
        child: ListView.builder(       // when we wrap this with the scroll bar.. - when we scrolling then the scroll thumb is appear and when we stop it'll disappear.. 
          itemCount: 20,
          //
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(8),
              height: 150,
              color: Colors.blue.shade100,
              child: Text(
                'Item $index',
                style: TextStyle(fontSize: 22),
              ),
            );
          },
        ),
      ),
    );
  }
}
