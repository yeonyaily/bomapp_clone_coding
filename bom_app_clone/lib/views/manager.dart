import 'package:bom_app_clone/views/check.dart';
import 'package:bom_app_clone/views/home.dart';
import 'package:bom_app_clone/widget/addBar.dart';
import 'package:bom_app_clone/widget/drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/pointerSignal.dart';


class Manager extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Scroll scroll = new Scroll();
    return Listener(
      onPointerSignal: (PointerSignalEvent event) {
          scroll.pointerSignal(event, Get.arguments);
      },
      child: Scaffold(
        appBar: appBar(context),
        endDrawer: drawer(context),
        body: Text('manager'),
      ),

    );
  }
}
