import 'package:bom_app_clone/widget/addBar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'views/Home.dart';
import 'views/charge.dart';
import 'views/chat.dart';
import 'views/check.dart';
import 'views/health.dart';
import 'views/info.dart';
import 'views/manager.dart';
import 'views/market.dart';
import 'package:bom_app_clone/widget/addBar.dart';

class Service extends StatefulWidget {
  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  int _currentIndex = 0;
  late List<Widget> _children;
  final pageController = PageController();

  void _upScroll() {
    setState(() {
      if(_currentIndex == _children.length-1){}
      else
        _currentIndex = _currentIndex + 1;
    });
  }

  void _downScroll() {
    setState(() {
      if(_currentIndex == 0){}
      else _currentIndex = _currentIndex - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    _children = [
      Home(),
      Manager(),
      Check(),
      Health(),
      Chat(),
      Market(),
      Charge(),
      Info(),
    ];
    return Listener(
      onPointerSignal: (PointerSignalEvent event) {
        if (event is PointerScrollEvent) {
          if (event.scrollDelta.dy > 0) {
            _upScroll();
          } else {
            _downScroll();
          }
        }
      },
      child: Scaffold(
        appBar: appBar(context),
        body: _children[_currentIndex],
      ),
    );
  }
}
