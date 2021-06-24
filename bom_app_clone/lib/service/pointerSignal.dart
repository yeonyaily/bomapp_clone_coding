import 'package:bom_app_clone/widget/text.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';

class Scroll {
  MyText myText = new MyText();

  void pointerSignal(PointerSignalEvent event, int index) {
    if (event is PointerScrollEvent) {
      if (event.scrollDelta.dy < 0) {
        index == 0
            ? null
            : Get.toNamed(myText.pageName[index - 1], arguments: index);
      } else {
        index == myText.pageName.length - 1
            ? null
            : Get.toNamed(myText.pageName[index + 1], arguments: index);
      }
    }
  }
}
