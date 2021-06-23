import 'package:flutter/gestures.dart';
import 'package:get/get.dart';

class Scroll {
  List _children = [
    '/main',
    '/manager',
    '/check',
    '/health',
    '/chat',
    '/market',
    '/request',
    '/info',
  ];

  void pointerSignal(PointerSignalEvent event, int index) {
    if (event is PointerScrollEvent) {
      if (event.scrollDelta.dy < 0) {
        index == 0
            ? null
            : Get.toNamed(_children[index - 1], arguments: index - 1);
      } else {
        index == _children.length - 1
            ? null
            : Get.toNamed(_children[index + 1], arguments: index + 1);
      }
    }
  }
}
