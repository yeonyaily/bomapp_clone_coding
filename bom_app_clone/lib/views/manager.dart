import 'package:bom_app_clone/views/check.dart';
import 'package:bom_app_clone/views/home.dart';
import 'package:bom_app_clone/widget/addBar.dart';
import 'package:bom_app_clone/widget/drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Manager extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (PointerSignalEvent event) {
        if (event is PointerScrollEvent) {
          if (event.scrollDelta.dy > 0) {
            Get.to(Check());
          }
          else{
            Get.to(Home());
          }
        }
      },
      child: Scaffold(
        appBar: appBar(context),
        endDrawer: drawer(context),
        body: Text('manager'),
      ),

    );
  }
}
