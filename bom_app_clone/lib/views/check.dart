import 'package:bom_app_clone/views/manager.dart';
import 'package:bom_app_clone/widget/addBar.dart';
import 'package:bom_app_clone/widget/drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  int radioVal = 0;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (PointerSignalEvent event) {
        if (event is PointerScrollEvent) {
          if (event.scrollDelta.dy > 0) {
            // Get.to(());
          }
          else{
            Get.to(Manager());
          }
        }
      },
      child: Scaffold(
        appBar: appBar(context),
        endDrawer: drawer(context),
        body: Text('check'),
      ),
    );
  }
}
