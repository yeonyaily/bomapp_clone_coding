import 'dart:async';
import 'package:bom_app_clone/service/pointerSignal.dart';
import 'package:bom_app_clone/widget/main/addBar.dart';
import 'package:bom_app_clone/widget/main/drawer.dart';
import 'package:bom_app_clone/widget/sub/image.dart';
import 'package:line_icons/line_icons.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;
  final page = 0;
  bool aisHovering = false;
  bool gisHovering = false;
  int _index = 0;
  int _index2 = 1;
  late final AnimationController _controller = AnimationController(
  duration: const Duration(seconds: 2),
  vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
  begin: Offset.zero,
  end: const Offset(0.0, 0.5),
  ).animate(CurvedAnimation(
  parent: _controller,
  curve: Curves.ease,
  ));

  @override
  void initState() {
    super.initState();


    const oneSec = const Duration(seconds: 5);
    new Timer.periodic(
        oneSec,
        (Timer t) => setState(() {
              if (_crossFadeState == CrossFadeState.showFirst) {
                if (_index == 0) {
                  _index2 = 1;
                  _crossFadeState = CrossFadeState.showSecond;
                } else if (_index == 2) {
                  _index2 = 0;
                  _crossFadeState = CrossFadeState.showSecond;
                } else {
                  _index2 = 2;
                  _crossFadeState = CrossFadeState.showSecond;
                  _index = 0;
                }
              } else {
                if (_index2 == 1) {
                  _index = 2;
                  _crossFadeState = CrossFadeState.showFirst;
                } else if (_index2 == 0) {
                  _index = 1;
                  _crossFadeState = CrossFadeState.showFirst;
                } else {
                  _index = 0;
                  _crossFadeState = CrossFadeState.showFirst;
                }
              }
            }));
  }

  @override
  Widget build(BuildContext context) {
    Scroll scroll = new Scroll();
    final widths = MediaQuery.of(context).size.width;
    return Listener(
    onPointerSignal: (PointerSignalEvent event) {
    scroll.pointerSignal(event, page);
    },
      child: Scaffold(
        // appBar: widths < 1000 ? null : appBar(context, page),
        endDrawer: drawer(context),
        body: widths < 1000
            ? mobileView(context)
            : Stack(
                children: [webView(context), appBar(context, page, true)],
              ),
        bottomNavigationBar: widths < 1000
            ? BottomAppBar(
                child: Container(
                  height: 60,
                  child: TextButton(
                    child: Text(
                      'BOMAPP 다운로드',
                      style: TextStyle(
                        fontFamily: "Nanum",
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    onPressed: () => launch('https://www.bomapp.co.kr/'),
                  ),
                ),
              )
            : null,
      ),
    );
  }

  Widget mobileView(BuildContext context) {
    final widths = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    MyImage myImage = new MyImage();
    return ListView(
      children: [
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: widths / 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '보험을 나에게 꼭📌맞게',
                  style: TextStyle(
                    fontFamily: "Nanum",
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  '보맵에서',
                  style: TextStyle(
                    fontFamily: "Nanum",
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontFamily: "Nanum",
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                  child: Container(
                    height: 53,
                    width: 152,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        RotateAnimatedText('모아보고!'),
                        RotateAnimatedText('골라보고!'),
                        RotateAnimatedText('살펴보고!'),
                      ],
                      isRepeatingAnimation: true,
                      repeatForever: true,
                      pause: const Duration(milliseconds: 100),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: height / 7),
        SizedBox(
          width: height < 800 ? widths / 1.4 : widths / 1.1,
          height: height < 800 ? height / 1.4 : height / 1.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                firstChild: myImage.mainImage(_index),
                secondChild: myImage.mainImage(_index2),
                duration: const Duration(seconds: 3),
                crossFadeState: _crossFadeState,
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget webView(BuildContext context) {
    final widths = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    MyImage myImage = new MyImage();
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: AnimatedCrossFade(
              firstChild: myImage.mainImage(_index),
              secondChild: myImage.mainImage(_index2),
              duration: const Duration(seconds: 3),
              crossFadeState: _crossFadeState,
            ),
          ),
          Stack(
            children: [
              Container(
                width: 430,
                //TODO: Height 을 줘야하나..?
                margin: EdgeInsets.only(left: 100, top: height * 0.24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '보험을 나에게 꼭📌맞게',
                      style: TextStyle(
                        fontFamily: 'Nanum',
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      '보맵에서',
                      style: TextStyle(
                        fontFamily: 'Nanum',
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontFamily: 'Nanum',
                        fontSize: 60.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                      child: Container(
                        height: 70,
                        width: 231,
                        child: AnimatedTextKit(
                          animatedTexts: [
                            RotateAnimatedText('모아보고!'),
                            RotateAnimatedText('골라보고!'),
                            RotateAnimatedText('살펴보고!'),
                          ],
                          isRepeatingAnimation: true,
                          repeatForever: true,
                          pause: const Duration(milliseconds: 100),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: height * 0.21,
                left: 88,
                child: Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () => null,
                        onHover: (hovering) {
                          setState(() => gisHovering = hovering);
                        },
                        child: SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton.icon(
                            icon: SizedBox(
                              width: 30,
                              height: 25,
                              child: new Image.asset(
                                'assets/GooglePlay.png',
                                color: !gisHovering ? Colors.white : Colors.blueAccent,
                              ),
                            ),
                            label: Text(
                              'Google Play',
                              style: TextStyle(
                                fontFamily: 'Nanum',
                                color: !gisHovering ? Colors.white : Colors.blueAccent,
                                fontWeight: FontWeight.w800,
                                fontSize: 17,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: !gisHovering ? Color(0xff6d96e5) : Colors.white,
                              elevation: 0,
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      InkWell(
                        onTap: () => null,
                        onHover: (hovering) {
                          setState(() => aisHovering = hovering);
                        },
                        child: SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton.icon(
                            icon: SizedBox(
                              width: 30,
                              height: 25,
                              child: new Image.asset(
                                'assets/apple.png',
                                color: !aisHovering ? Colors.white : Colors.blueAccent,
                              ),
                            ),
                            label: Text(
                              'App Store',
                              style: TextStyle(
                                fontFamily: 'Nanum',
                                color: !aisHovering ? Colors.white : Colors.blueAccent,
                                fontWeight: FontWeight.w800,
                                fontSize: 17,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: !aisHovering ? Color(0xff6d96e5) : Colors.white,
                              elevation: 0,
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              aisHovering ?
              showAQR(height) : Container(),
              gisHovering ?
              showGQR(height) : Container(),
              Positioned(
                left: 80,
                bottom: 50,
                child: SlideTransition(
                  position: _offsetAnimation,
                  child: Icon(
                    LineIcons.values['arrowDown'],
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  showAQR(double height) => Positioned(
    bottom: height * 0.3,
    right: 50,
    child: Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.all(10),
      child: QrImage(
        data: "https://apps.apple.com/kr/app/id1187829462",
        backgroundColor: Colors.white,
        size: 100,
      ),
    ),
  );

  showGQR(double height) => Positioned(
    bottom: height * 0.3,
    left: 110,
    child: Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
            Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.all(10),
      child: QrImage(
        data: "https://apps.apple.com/kr/app/id1187829462",
        backgroundColor: Colors.white,
        size: 100,
      ),
    )
  );
}
