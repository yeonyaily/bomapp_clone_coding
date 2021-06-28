import 'package:flutter/gestures.dart';
import 'package:get/get.dart';

import '../widget/sub/text.dart';
import 'time.dart';

class Scroll {
  MyText myText = MyText();

  void pointerSignal(PointerSignalEvent event, int index) {
    var lastDuration = MyTime.duration;
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
