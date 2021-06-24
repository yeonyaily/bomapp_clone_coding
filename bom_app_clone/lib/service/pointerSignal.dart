import 'package:bom_app_clone/get.dart';
import 'package:bom_app_clone/service/time.dart';
import 'package:bom_app_clone/widget/text.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';

class Scroll {
  MyText myText = new MyText();

  void pointerSignal(PointerSignalEvent event, int index) {
    Duration lastDuration = MyTime.duration;
    if (event is PointerScrollEvent) {
      if (event.scrollDelta.dy < 0 &&
          event.timeStamp - lastDuration > Duration(milliseconds: 700)) {
        MyTime.duration = event.timeStamp;
        index == 0
            ? null
            : Get.toNamed(myText.pageName[index - 1], arguments: index);
      } else if (event.scrollDelta.dy > 0 &&
          event.timeStamp - lastDuration > Duration(milliseconds: 700)) {
        MyTime.duration = event.timeStamp;
        index == myText.pageName.length - 1
            ? null
            : Get.toNamed(myText.pageName[index + 1], arguments: index);
      }
    }
  }
}
