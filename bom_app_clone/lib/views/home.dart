import 'dart:async';
import 'package:bom_app_clone/service/pointerSignal.dart';
import 'package:bom_app_clone/widget/addBar.dart';
import 'package:bom_app_clone/widget/drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;

  final List<String> imagesList = [
    'assets/main-visual-2020-1.png',
    'assets/main-visual-2020-2.png',
    'assets/main-visual-2020-3.png',
  ];


  @override
  void initState() {
    super.initState();

    const oneSec = const Duration(seconds: 5);
    new Timer.periodic(oneSec, (Timer t) => setState(() {
      (_crossFadeState == CrossFadeState.showFirst)?
          _crossFadeState = CrossFadeState.showSecond :
          _crossFadeState = CrossFadeState.showFirst;
    }));

  }

  @override
  Widget build(BuildContext context) {
    Scroll scroll = new Scroll();
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
