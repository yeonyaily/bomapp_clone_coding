import 'dart:async';

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
        body: Container(
          child: Row(
            children: [
              AnimatedCrossFade(
                firstChild: phone_images(0),
                secondChild: phone_images(1),
                duration: const Duration(seconds:3),
                crossFadeState: _crossFadeState,
              )
            ],
          ),
        )

      ),
    );
  }

  Widget phone_images (int index) {
    return AspectRatio(
      aspectRatio: 2/5,
      child: Image.asset(imagesList[index]),
    );
  }
}


