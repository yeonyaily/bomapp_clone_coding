import 'package:get/get.dart';

class Controller extends GetxController{
  int count = 0;

  void increment(int index){
    count = index;
    update();
  }
}