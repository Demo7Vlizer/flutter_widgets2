import 'package:flutter/material.dart';

/* 
  03) Moving to top & bottom of list..  - by programatically.. 
      scrollController has got two methods.. are :-
      1) jumpTo(double value) → void
      2) animateTo(double offset, {required Duration duration, required Curve curve}) → Future<void>
*/

/*
    Item / Index Wise scrolling.. 
*/

/*
class ScrollControllerTest extends StatelessWidget {
  ScrollControllerTest({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();





  @override
  Widget build(BuildContext context) {
    //
    // _scrollController.addListener(() {
    //   print(_scrollController.offset);                   // it is showing the current position.. of the scrolling.. items..
    //   // print(_scrol lController.position.pixels);             // in order to get scrollPostion..
    // });

    return Scaffold(
      appBar: AppBar(title: const Text('ScrollController Test')),

      //
      body: ListView.builder(
        itemCount: 20,
        controller: _scrollController,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color:
                index % 2 == 0 ? Colors.blue.shade100 : Colors.orange.shade100,
            height: 150,
            child: Text(
              'Item $index',
              style: const TextStyle(fontSize: 22),
            ),
          );
        },
      ),
      // List upward and downward..scrolling by upward and downward button... 
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.arrow_upward),
              onPressed: () {
                // _scrollController
                //     .jumpTo(_scrollController.position.minScrollExtent);  // When we're clicking up on the button it'll scroll up
                //----------------------------------------------------------------------------
                // By this help of scrolling with animation it'll scrolling slowly.. 
                // _scrollController
                //     .animateTo(_scrollController.position.minScrollExtent, duration: Duration(seconds: 2), curve: Curves.easeIn);
                //-----------------------------------------------------------------------------
                //-- Now when we click on up arrow it'll scroll item wise 
                 _scrollController
                    .animateTo(_scrollController.offset - 150, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
              }),

          FloatingActionButton(
              child: const Icon(Icons.arrow_downward),
              onPressed: () {
                // _scrollController   
                //     .jumpTo(_scrollController.position.maxScrollExtent);     // When we're clicking down on the button it'll scroll down
                //-------------------------------------------------------------------------------
                // By this help of scrolling with animation it'll scrolling slowly.. 
                _scrollController
                    .animateTo(_scrollController.position.maxScrollExtent, duration: Duration(seconds: 2), curve: Curves.easeIn);
                //------------------------------------------------------------------------------
                //-- Now when we click on down arrow it'll scroll item wise 
                _scrollController
                    .animateTo(_scrollController.offset + 150, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
              })
        ],
      ),
    );
  }
}
*/

//----------------------------------------------------------------------------------------------------------
/*
    Detecting start or end of list.. 
*/

class ScrollControllerTest extends StatefulWidget {
  ScrollControllerTest({Key? key}) : super(key: key);

  @override
  State<ScrollControllerTest> createState() => _ScrollControllerTestState();
}

class _ScrollControllerTestState extends State<ScrollControllerTest> {
  final ScrollController _scrollController = ScrollController();

  String _scrollLocation = 'Reached Start';

  @override
  void initState() {
    _scrollController.addListener(_listenToScrollMoments);
    super.initState();
  }

  //
  // ignore: unused_element
  void _listenToScrollMoments() {
    String currentLocation = '';
    if (_scrollController.offset ==
        _scrollController.position.minScrollExtent) {
      currentLocation = 'Reached Start';
    } else if (_scrollController.offset ==
        _scrollController.position.maxScrollExtent) {
      currentLocation = 'Reached End';
    } else {
      currentLocation = 'In Between List';
    }

    setState(() {
      _scrollLocation = currentLocation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_scrollLocation)),      // This is showing us the status or position..  of scrolling where we are in the end or in betweeen or in start position.. 

      //
      body: ListView.builder(
        itemCount: 20,
        controller: _scrollController,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color:
                index % 2 == 0 ? Colors.blue.shade100 : Colors.orange.shade100,
            height: 150,
            child: Text(
              'Item $index',
              style: const TextStyle(fontSize: 22),
            ),
          );
        },
      ),
    );
  }
}
