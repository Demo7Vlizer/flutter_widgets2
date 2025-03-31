import 'package:flutter/material.dart';

//-- ListView.custom is more efficient and powerfull than listView.builder..
// ListView.custrom is having complex and layouts and shapes.. rather then using  ListView.builder alterNatively use ListViewCustom widgets.. that render efficiently..
// SliverDelegate means that optimize the performence.. and allows you to create large list or grid of children  widget without impacting.. the performance of application..
// SliverChildDelegate is an abstract class that defines the interface for creating and laying out child widgets within a sliver.
// SliverChildDelegate -> SliverChildListDelegate and SliverChildBuilderDelegate..

class ListViewCustomWidgets extends StatelessWidget {
  const ListViewCustomWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Learning ListView.custom'),
        ),
        body: ListView.custom(
          childrenDelegate: SliverChildListDelegate([
            _getItem(0),
            _getItem(1),
            _getItem(2),
            _getItem(3),
            _getItem(4),
            _getItem(5),
            _getItem(6),
            _getItem(7),
            _getItem(8),
            _getItem(9),
          ]),
        ), // instance of SliverChildDelegate(),
        //------------------------------------------------------------------------
         /*
        body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    user[index].image,
                  ),
                ),
                title: Text(user[index].name),
                subtitle: Text(users[index].profession),
              );
            },
            childCount: users.lenght,
          ),
        )
         */
        );
  }
}

// Create a simple box with index..
Widget _getItem(int index) {
  return Container(
    alignment: Alignment.center,
    height: 120,
    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    color: Colors.blue.shade100,
    child: Text(
      'Item No. $index',
      style: const TextStyle(fontSize: 18),
    ),
  );
}
