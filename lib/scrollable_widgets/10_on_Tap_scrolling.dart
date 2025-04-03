import 'package:flutter/material.dart';

class TapToScrollWithIndicator extends StatefulWidget {
  const TapToScrollWithIndicator({Key? key}) : super(key: key);
  @override
  State<TapToScrollWithIndicator> createState() =>
      _TapToScrollWithIndicatorState();
}

class _TapToScrollWithIndicatorState extends State<TapToScrollWithIndicator> {
  final List<Color> _colors = const [
    Color(0xFFFFA040F),
    Color(0xFFF66722),
    Color(0xFF1ABC9C),
    Color(0xFF2EC71),
    Color(0xFF3498DB),
  ];

  final _containerHeight = 700.0;
  final ScrollController _scrollController = ScrollController();
  int _currentScrollIndex = 0;

  //
  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_updateScrollIndicator);
  }

  void _updateScrollIndicator() {
    setState(() {
      _currentScrollIndex = _scrollController.offset ~/ _containerHeight;
    });
  }

  void _onNumberTap(int index) {
    _scrollController.animateTo(index * _containerHeight,
        duration: Duration(seconds: 1), curve: Curves.easeIn);
    setState(() {
      _currentScrollIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _colors[1],
        title: const Text('Interactive tap to scroll with scroll indicator '),
      ),

      //
      body: Column(
        children: [
          //
          SizedBox(
            height: 90,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _colors.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    _onNumberTap(index);
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.all(16),
                    alignment: Alignment.center,
                    decoration: index == _currentScrollIndex
                        ? BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.grey, width: 2)))
                        : null,
                    child: Text(
                      '${index + 1} ',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                );
              },
            ),
          ),

          //
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _colors.length,
              itemBuilder: (contex, index) {
                return Container(
                  height: _containerHeight,
                  color: _colors[index],
                  alignment: Alignment.center,
                  child: Text('${index + 1}',
                      style: const TextStyle(
                          fontSize: 100, color: Colors.black45)),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
