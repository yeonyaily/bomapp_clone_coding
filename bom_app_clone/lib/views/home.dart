import 'package:bom_app_clone/widget/addBar.dart';
import 'package:bom_app_clone/widget/drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'manager.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (PointerSignalEvent event) {
        if (event is PointerScrollEvent) {
          if (event.scrollDelta.dy > 0) {
            Get.to(Manager());
          }
        }
      },
      child: Scaffold(
        appBar: appBar(context),
        endDrawer: drawer(context),
        body: Text('Home'),
      ),
    );
  }
}
