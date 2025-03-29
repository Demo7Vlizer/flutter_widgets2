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
import 'package:flutter_widgets/flutter_widgets/16_divider_widgets.dart';
import 'package:flutter_widgets/flutter_widgets/17_verticalDivider_widgets.dart';
import 'package:flutter_widgets/flutter_widgets/18_circleAvatar_widgets.dart';
import 'package:flutter_widgets/flutter_widgets/19_sizedBox_widgets.dart';
import 'package:flutter_widgets/flutter_widgets/20_constrained_box.dart';
import 'package:flutter_widgets/flutter_widgets/21_fittedBox_widget.dart';
import 'package:flutter_widgets/flutter_widgets/22_fractionallySizedBox_widget.dart';
import 'package:flutter_widgets/flutter_widgets/23_rotattedBox_widget.dart';
import 'package:flutter_widgets/flutter_widgets/24_limitedBox_widget.dart';
import 'package:flutter_widgets/flutter_widgets/25_opacity_widget.dart';
import 'package:flutter_widgets/flutter_widgets/26_Icon_widget.dart';
import 'package:flutter_widgets/flutter_widgets/27_listTile_widget.dart';
import 'package:flutter_widgets/flutter_widgets/28_expansionTile_widget.dart';
import 'package:flutter_widgets/scrollable_widgets/01_ListView_Widgets.dart';
import 'package:flutter_widgets/scrollable_widgets/02_ListView.builder_widgets.dart';
import 'package:flutter_widgets/scrollable_widgets/03_ListView.separated_widgets.dart';
import 'package:flutter_widgets/scrollable_widgets/ListView.custom.dart';

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
      // home: stack_widget(),
      // home: divider_widgets(),
      // home: verticalDivider_widgets(),
      // home: circleAvatar_widgets(),
      // home: sizedBox_widgets(),
      // home: constrainedBox_widget(),
      // home: fittedBox_widget(),
      // home: FractionallySizedBox_widget(),
      // home: RotatedBox_widget(),
      // home: LimitedBox_widget(),
      // home: Opacity_widget(),
      // home: Icon_widget(),
      // home: ListTile_widget(),
      // home: ExpansionTile_widget(), 
      //-------------------------------------------------------------------------
      //---Scrollable Widgets.. 
      // home: ListView_Widgets(),
      // home: ListViewBuilder_widgets()
      // home: ListViewSeparated_widgets()
      // home: ListViewCustomWidgets()
      home: SingleChildScrollView()
    );
  }
}
