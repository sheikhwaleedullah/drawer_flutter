import 'package:flutter/material.dart';

class ImagePractice extends StatelessWidget{
  const ImagePractice({super.key});

  // This widgetis the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      
        child: Image.asset('assets\flutter5786.jpg'),
      ),
    );
  }
}