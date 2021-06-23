import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;
  int returnVal = 0;
  final List<String> imagesList = [
    'assets/main-visual-2020-1.png',
    'assets/main-visual-2020-2.png',
    'assets/main-visual-2020-3.png',
  ];


  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _crossFadeState = CrossFadeState.showSecond;
      });
    });
    
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _crossFadeState = CrossFadeState.showFirst;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('main'),
      ),
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
    );
  }

  Widget phone_images (int index) {
    return AspectRatio(
      aspectRatio: 2/5,
      child: Image.asset(imagesList[index]),
    );
  }
}



/*
        body: Container(
          child: Row(
            children: [
              AnimatedSwitcher(
                duration: Duration(seconds: 3),
                child: AspectRatio(
                  aspectRatio: 2/5,
                  child: Image.asset('main-visual-2020-1.png'),
                ),
              )
            ],
          ),
        )
          */