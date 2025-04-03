import 'package:flutter/material.dart';

class ListViewInsideListView extends StatelessWidget {
  const ListViewInsideListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              'List View Inside ListView - nested ListView in flutter')),
    body: ListView(
      children: [
        Container(
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          alignment: Alignment.center,
          color: Colors.orange.shade100,
          child: Text('Item 1')
        ),

        //Horizontal ListView
        SizedBox(
          // height: 100,
          height: 300,
          child: ListView.builder(
            // scrollDirection: Axis.horizontal,
            itemCount: 50,
            itemBuilder: (context, index){
              return Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(8),
                color: Colors.orange.shade400,
                width: 100,
                child: Text('${index + 1}')
              );
            },
          )
        ),


        Container(
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          alignment: Alignment.center,
          color: Colors.orange.shade100,
          child: Text('Item 2')
        ),
        Container(
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          alignment: Alignment.center,
          color: Colors.orange.shade100,
          child: Text('Item 3')
        ),
        Container(
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          alignment: Alignment.center,
          color: Colors.orange.shade100,
          child: Text('Item 4')
        ),
        Container(
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          alignment: Alignment.center,
          color: Colors.orange.shade100,
          child: Text('Item 5')
        ),
        Container(
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          alignment: Alignment.center,
          color: Colors.orange.shade100,
          child: Text('Item 6')
        ),
        Container(
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          alignment: Alignment.center,
          color: Colors.orange.shade100,
          child: Text('Item 7')
        ),
        Container(
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          alignment: Alignment.center,
          color: Colors.orange.shade100,
          child: Text('Item 8')
        ),
        Container(
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          alignment: Alignment.center,
          color: Colors.orange.shade100,
          child: Text('Item 9')
        ),
        Container(
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          alignment: Alignment.center,
          color: Colors.orange.shade100,
          child: Text('Item 10')
        ),
      ],
    ),
    );
  }
}
