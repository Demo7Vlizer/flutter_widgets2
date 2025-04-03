import 'package:flutter/material.dart';

class ListView_inside_column extends StatelessWidget {
  const ListView_inside_column({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text('ListView inside column'),
          ),
      // body: Column(
      //   children: [
      //     Image.asset('assets/image/food.png'),
      //     Expanded(
      //       child: ListView.builder(
      //         // flutter gives unbounded height error when we use ListView.builder inside column.. so we've have to wrap with.. expanded..
      //         itemCount: 10,
      //         itemBuilder: (context, index) {
      //           return Container(
      //             alignment: Alignment.center,
      //             height: 200,
      //             color: Colors.grey,
      //             margin: const EdgeInsets.symmetric(vertical: 8),
      //             child: Text(
      //               'Item $index',
      //               style: const TextStyle(fontSize: 24),
      //             ),
      //           );
      //         },
      //       ),
      //     )
      //   ],
      // ),
      //--------------------------------------------------------------------------------------------
      body: Column(
        children: [
          Image.asset('assets/image/food.png'),
          SizedBox(
            height: 100,
            width:  double.infinity ,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              // flutter gives unbounded height error when we use ListView.builder inside column.. so we've have to wrap with.. expanded..
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  height: 100,
                  color: Colors.grey,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    'Item $index',
                    style: const TextStyle(fontSize: 24),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
