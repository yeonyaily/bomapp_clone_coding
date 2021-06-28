import 'package:get/get.dart';

class Controller extends GetxController{
  int duration = 0;

  dynamic change(int time){
    duration = time;
    update();
  }
}