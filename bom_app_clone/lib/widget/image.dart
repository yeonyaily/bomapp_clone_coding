import 'package:flutter/material.dart';

class MyImage{
  final List<String> imagesList = [
    'assets/main-visual-2020-1.png',
    'assets/main-visual-2020-2.png',
    'assets/main-visual-2020-3.png',
  ];

  Widget phone_images (int index) {
    return AspectRatio(
      aspectRatio: 2/5,
      child: Image.asset(imagesList[index]),
    );
  }
}