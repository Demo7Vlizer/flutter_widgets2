import 'package:flutter/material.dart';

class ListViewSeparated_widgets extends StatelessWidget {
  const ListViewSeparated_widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning ListView.separated'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
        // separatorBuilder: (BuildContext context, int index) {
        //   return const Divider();
        // },
        //----------------------------------------------------------------
        //-- If we want to show the ads after left two three items .. 
        separatorBuilder: (BuildContext context, int index) {
          return (index + 4) % 5 == 0
              ? ListTile(
                  leading: Text('Hey there , Your Ads is Here.. '),
                )
              : const SizedBox(
                  width: 0,
                  height: 0,
                );
        },

        //--------------------------------------------------
        itemCount: 50,
      ),
    );
  }
}
