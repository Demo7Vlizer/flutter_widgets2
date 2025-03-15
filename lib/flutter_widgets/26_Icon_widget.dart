import 'package:flutter/material.dart';

class Icon_widget extends StatelessWidget {
  const Icon_widget({super.key});

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Icon(
          Icons.person,
          size: 200,
          color: Colors.blue,
        ),  
      ),
    );
  }
} 
