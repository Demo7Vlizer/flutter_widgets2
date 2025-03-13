import 'package:flutter/material.dart';

//-- RichText
//-- TextSpan
//-- WidgetSpan
//-- TextStyle
//-- TapGestureRecognizer
//-- Icon



// ignore: camel_case_types
class richText extends StatelessWidget {
  const richText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rich Text'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        // child: Text.rich(
        //   TextSpan(
        //     text: 'Hello \n',
        //     style: TextStyle(color: Colors.black, fontSize: 40),
        //     children: [      // -- there also having a children property 
        //       TextSpan(
        //         text: 'Whats up',
        //         style: TextStyle(color: Colors.red, fontSize: 40),
        //       ),
        //     ],
        //   ),
        // ),
        //------------------------------------------------------------------------------------------
        // child: Text.rich(
        //   TextSpan(
        //     text: 'Don\'t have an account? ',
        //     style: TextStyle(color: Colors.black, fontSize: 20),
        //     children: [
        //       TextSpan(
        //         text: 'Sign Up',
        //         style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        //         recognizer: TapGestureRecognizer()..onTap = () {
        //           print('Sign Up');
        //         },
        //       ),  
        //     ],
        //   ),
        // ),  
        //------------------------------------------------------------------------------------------
        // child: Text.rich(
        //   TextSpan(
        //     text: 'I',
        //     style: TextStyle(color: Colors.black, fontSize: 25),
        //     children: [
        //       WidgetSpan(
        //         child: Icon(Icons.favorite_outlined, color: Colors.red,),
        //       ),
        //       TextSpan(
        //         text: ' To play football',
        //         style: TextStyle(color: Colors.black, fontSize: 25),
        //       ),
        //     ],
            
        //   ),
        // ),
        //------------------------------------------------------------------------------------------
        child: Text.rich(
          TextSpan(
            text: 'Balance\n',
            style: TextStyle(color: Colors.black, fontSize: 20),
            children: [
              TextSpan(
                text: '₹ 9,12,345',
                style: TextStyle(color: Colors.green, fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}  