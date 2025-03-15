import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_widgets/10_spacer_widgets.dart';
import 'package:flutter_widgets/flutter_widgets/11_card_widgets.dart';
import 'package:flutter_widgets/flutter_widgets/05_collumn_widget.dart';
import 'package:flutter_widgets/flutter_widgets/06_row&collumn.dart';
import 'package:flutter_widgets/flutter_widgets/07_expanded_widget.dart';
import 'package:flutter_widgets/flutter_widgets/08_flexible_widget.dart';
import 'package:flutter_widgets/flutter_widgets/09_text_widget.dart';
import 'package:flutter_widgets/flutter_widgets/12_center_widget.dart';
import 'package:flutter_widgets/flutter_widgets/13_align_widget.dart';
import 'package:flutter_widgets/flutter_widgets/14_positioned_widget.dart';
import 'package:flutter_widgets/flutter_widgets/15_stack_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: richText(),
      // home: padding_widgets(),
      // home: Image_widget(),
      // home: container_widget(),
      // home: row_widget(),
      // home: collumn_widget(),
      // home: row_collumn(),
      // home: expanded_widget(),
      // home: flexible_widget(),
      // home: text_widget(),
      // home: spacer_widgets(), 
      // home: card_widgets(),
      // home: center_widget(),
      // home: align_widget(),
      // home: positioned_widgets(),
      home: stack_widget(),
    );
  }
}
