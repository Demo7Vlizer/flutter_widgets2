import 'package:flutter/material.dart';

class ListViewCustomWidgets extends StatelessWidget{
  const ListViewCustomWidgets ({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context ){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning ListView.custom'),
      ),
      // body: ListView.custom(childrenDelegate: childrenDelegate)
    );
  }
}