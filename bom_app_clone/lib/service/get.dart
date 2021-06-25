import 'package:flutter/gestures.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  int duration = 0;

  change(time){
    duration = time;
    update();
  }
}