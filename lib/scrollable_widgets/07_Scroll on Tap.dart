import 'package:flutter/material.dart';

class TapToSCroll extends StatelessWidget {
  TapToSCroll({Key? key}) : super(key: key);

  //
  final List<Color> _colors = const [
    Color(0XFF1ABC9C),
    Color(0XFF2ECC71),
    Color(0XFF3498DB),
    Color(0XFF9B59B6),
    Color(0XFF34495E),
    Color(0XFFFFC40F),
    Color(0XFFE67E22),
    Color(0XFFE74C3C),
    Color(0XFFDB94D4),
    Color(0XFFF95A5A6),
  ];

  final _containerHeight = 300.0;
  final ScrollController _scrollController = ScrollController();

  //
  void _scrollToTap(int index) {
    _scrollController.animateTo(index * _containerHeight,
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tap Number to Scroll')),
      body: Column(
        children: [
          //Horizontal list with number
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _colors.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    _scrollToTap(index);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    color: _colors[index],
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child:  Text(
                      '${index + 1}',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                );
              },
            ),
          ),

          //Vertical list containers
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _colors.length,
              itemBuilder: (context, index) {
                return Container(
                  height: _containerHeight,
                  color: _colors[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
