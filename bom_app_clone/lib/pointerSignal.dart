import 'package:bom_app_clone/views/charge.dart';
import 'package:bom_app_clone/views/chat.dart';
import 'package:bom_app_clone/views/check.dart';
import 'package:bom_app_clone/views/health.dart';
import 'package:bom_app_clone/views/home.dart';
import 'package:bom_app_clone/views/info.dart';
import 'package:bom_app_clone/views/manager.dart';
import 'package:bom_app_clone/views/market.dart';
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
        index==0 ? null : Get.toNamed(_children[index-1], arguments: index-1);
      } else {
        index== _children.length-1 ? null : Get.toNamed(_children[index+1], arguments: index+1);
      }
    }
  }
}
