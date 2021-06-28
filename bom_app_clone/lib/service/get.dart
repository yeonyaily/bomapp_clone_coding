import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BuilderController extends GetxController{
  CrossFadeState crossFadeState = CrossFadeState.showFirst;
  int index = 0;
  int index2 = 1;
  int duration = 0;
  bool googleHover = false;
  bool appleHover = false;


  dynamic googleHoverChange(bool hovering){
    googleHover = hovering;
    update();
  }

  dynamic appleHoverChange(bool hovering){
    appleHover = hovering;
    update();
  }

  dynamic crossFadeChange(){
    if (crossFadeState == CrossFadeState.showFirst) {
      if (index == 0) {
        index2 = 1;
        crossFadeState = CrossFadeState.showSecond;
      } else if (index == 2) {
        index2 = 0;
        crossFadeState = CrossFadeState.showSecond;
      } else {
        index2 = 2;
        crossFadeState = CrossFadeState.showSecond;
      }
    } else {
      if (index2 == 1) {
        index = 2;
        crossFadeState = CrossFadeState.showFirst;
      } else if (index2 == 0) {
        index = 1;
        crossFadeState = CrossFadeState.showFirst;
      } else {
        index = 0;
        crossFadeState = CrossFadeState.showFirst;
      }
    }
    update();
  }

  dynamic change(int time){
    duration = time;
    update();
  }


}


class ReactiveController extends GetxController{
  Rx<Duration> duration = Duration(seconds: 0).obs;
  // RxInt duration = 0.obs;

}