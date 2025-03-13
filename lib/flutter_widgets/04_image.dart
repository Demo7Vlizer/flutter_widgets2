import 'package:flutter/material.dart';
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';
import 'dart:typed_data'; // Required for Uint8List

// Image(ImageProvider<Object> image, ..)   //--It's use inside a container widget ... wich decoration property ... 
// Image.asset(String name, ..)
// Image.network(String src, ..)   //-- it's allows us to display image from the internet ..
// Image.file(File file, ..)       //-- it's allows us to display image from the file system .. in the user device.. memory location .. and there is required permission to access the file system .. so w've to add permission_handler package .. in pubspec.yaml file ..
// Image.memory(Uint8List bytes, ..)   //-- it's allows us to disply image in the form of Uint8List this means a byte array of image data ..
//--- Uint8List is a list of unsigned 8-bit integers (0-255) that represent the image data.
//--- It's a common way to store image data in memory.
//--- It's a list of bytes that represent the image data.
//--- We process image from memory and display it in different different direction ..  left, right, top, bottom, center, etc. 


class Image_widget extends StatefulWidget {
  const Image_widget({Key? key}) : super(key: key);

  @override
  State<Image_widget> createState() => _Image_widgetState();
}

class _Image_widgetState extends State<Image_widget> {
  bool hasPermission = false;
  // This will store our image bytes
  Uint8List? imageBytes;

  @override
  void initState() {
    super.initState();
    _checkPermission();
    // Example of creating a simple colored rectangle as bytes
    // In real apps, these bytes would usually come from:
    // - Camera capture
    // - File reading
    // - Network download
    // - Drawing on canvas
    _createSampleImageBytes();
  }

  // This is just a demo method to create sample image bytes
  // In real apps, you'd get bytes from camera/file/network
  void _createSampleImageBytes() {
    // Creating a 100x100 pixel image with red color
    final int width = 100;
    final int height = 100;
    final int bytesPerPixel = 4; // RGBA

    imageBytes = Uint8List(width * height * bytesPerPixel);
    for (int i = 0; i < imageBytes!.length; i += bytesPerPixel) {
      imageBytes![i] = 255; // Red
      imageBytes![i + 1] = 0; // Green
      imageBytes![i + 2] = 0; // Blue
      imageBytes![i + 3] = 255; // Alpha (opacity)
    }
  }

  Future<void> _checkPermission() async {
    final status = await Permission.storage.request();
    setState(() {
      hasPermission = status.isGranted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First container with Image.asset
            Center(
              child: Container(
                // width: double.infinity,
                // height: double.infinity,
                width: 300,
                height: 300,
                color: Colors.red,
                child: Image.asset(
                  'assets/image/girlPhoto.png',
                  // fit: BoxFit.fill,   //-= cover, fill, fitWidth, fitHeight, none
                  // fit: BoxFit.cover,
                  // fit: BoxFit.fitWidth,
                  // fit: BoxFit.fitHeight,
                  fit: BoxFit
                      .contain, //-= contain, cover, fitWidth, fitHeight, none
                  // errorBuilder: (BuildContext context, Object error, StackTrace ? stackTrace) => Text('No image found'),
                  // repeat: ImageRepeat.repeatX,
                  // repeat: ImageRepeat.repeatY,
                  // repeat: ImageRepeat.repeat,
                  // height: 400,
                  // color: Colors.blue,
                  // alignment: Alignment.center,
                  // alignment: Alignment.topCenter,
                  // alignment: Alignment.bottomCenter,
                  alignment: Alignment.topLeft,
                ), // Image.asset
              ),
            ),

            const SizedBox(height: 20), // Spacing between images

            // Second container with Image.file
            if (hasPermission) // Only show if permission is granted
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.blue,
                  child: Image.file(
                    File(
                        '/path/to/your/image.jpg'), // Replace with your file path
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) =>
                        const Text('No file image found'),
                    // All the same properties are available as Image.asset
                    // fit: BoxFit.fill,
                    // fit: BoxFit.cover,
                    // fit: BoxFit.fitWidth,
                    // fit: BoxFit.fitHeight,
                    // repeat: ImageRepeat.repeatX,
                    // repeat: ImageRepeat.repeatY,
                    // repeat: ImageRepeat.repeat,
                    // height: 400,
                    // color: Colors.blue,
                    alignment: Alignment.center,
                  ),
                ),
              )
            else
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                        'Storage permission required to display file image'),
                  ),
                ),
              ),

            const SizedBox(height: 20), // Spacing before memory image

            // Third container with Image.memory
            // This shows how to display an image from raw bytes
            Center(
              child: Container(
                width: 300,
                height: 300,
                color: Colors.green,
                child: imageBytes != null
                    ? Image.memory(
                        imageBytes!,
                        // Just like other Image widgets, you can use all the same properties
                        fit: BoxFit.contain,
                        // Show error text if image bytes are invalid
                        errorBuilder: (context, error, stackTrace) =>
                            const Text('Invalid image data'),
                        // You can use all the same properties as Image.asset and Image.file
                        // fit: BoxFit.fill,
                        // fit: BoxFit.cover,
                        // repeat: ImageRepeat.repeat,
                        // alignment: Alignment.center,
                      )
                    : const Center(
                        child: Text('Creating image bytes...'),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
