import 'package:flutter/material.dart';

class MyImage{
  final List<String> switchImages = [
    'assets/main-visual-2020-1.png',
    'assets/main-visual-2020-2.png',
    'assets/main-visual-2020-3.png',
  ];

  final List<String> subImages = [
    'assets/main-visual-2020-manager.png',
    'assets/main-visual-2020-check.png',
    'assets/main-visual-2021-health.png',
    'assets/main-visual-2021-chat.png',
    'assets/main-visual-2020-market.png',
    'assets/main-visual-2020-request.png',
  ];


  Widget mainImage (int index) {
    return AspectRatio(
      aspectRatio: 2/5,
      child: Image.asset(switchImages[index]),
    );
  }
}