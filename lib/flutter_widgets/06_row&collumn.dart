import 'package:flutter/material.dart';

class row_collumn extends StatelessWidget {
  const row_collumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.only(top: 100),
          // color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FileUploadWidget(
                text: "Upload",
                icon: Icons.upload,
                color: Colors.green,
              ),
              FileUploadWidget(
                text: "Download",
                icon: Icons.download,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FileUploadWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  const FileUploadWidget({
    Key? key,
    required this.text,
    required this.icon,
    this.color = Colors.green, // Default color if not specified
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          child: Icon(
            icon,
            color: color,
          ),
          decoration: BoxDecoration(
            color: color.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(height: 10),
        Text(text),
      ],
    );
  }
}
