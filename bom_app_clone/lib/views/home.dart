import 'package:bom_app_clone/pointerSignal.dart';
import 'package:bom_app_clone/widget/addBar.dart';
import 'package:bom_app_clone/widget/drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Scroll scroll = new Scroll();
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (PointerSignalEvent event) {
        scroll.pointerSignal(event, 0);
      },
      child: Scaffold(
        appBar: appBar(context),
        endDrawer: drawer(context),
        body: Text('Home'),
      ),
    );
  }
}
