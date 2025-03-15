import 'package:flutter/material.dart';

class circleAvatar_widgets extends StatelessWidget {
  const circleAvatar_widgets({super.key});

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              // child: Text('A'),
              child: Icon(Icons.person_outline),
              // radius: 50,
              minRadius: 30,                 // default is 0 
              maxRadius: 50,                  // default is double.infinity   for making responsive 
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            //------------------------------------------------------------
            SizedBox(height: 20,),
            CircleAvatar(    // this is used to make a circle avatar inside a circle avatar  little make it beautiful  
              radius: 55,   // we've to set the radius of the outer circle avatar  little bit more than the inner circle avatar  
              backgroundColor: Colors.green,
              child: CircleAvatar(     // giving a white background to the inner circle avatar  and also litle bit space.. between green and image avtar .. 
                radius: 52,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/image/face4.PNG'),
                ),
              ),
            ),
            //------------------------------------------------------------
            SizedBox(height: 20,),
            CircleAvatar(
              radius: 50, 
              child: Text('A', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),    // this text will be shown over the image 
              foregroundImage: AssetImage('assets/image/avtar.png'),     // this image will be shown over the text  that foregroundImage is used .. this will take higher priority than child   
              foregroundColor: Colors.white,      
              backgroundImage: AssetImage('assets/image/face3.PNG'),
            ),
          ],
        ),
      ),
    );
  }
}





//-------------------------<(Porperties of CircleAvatar)>--------------------------- 
// const CircleAvatar(
//   {Key? key,
//   Widget? child,
//   Color? backgroundColor,
//   Color? foregroundColor,
  
//   double? radius,
//   double? minRadius,
//   double? maxRadius,
  
//   ImageProvider<Object>? backgroundImage,
//   ImageProvider<Object>? foregroundImage,
  
//   ImageErrorListener? onBackgroundImageError,
//   ImageErrorListener? onForegroundImageError}
// )
//----------------------------------------------------------