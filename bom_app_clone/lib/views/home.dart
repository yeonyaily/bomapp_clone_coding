import 'dart:async';
import 'package:bom_app_clone/service/pointerSignal.dart';
import 'package:bom_app_clone/widget/addBar.dart';
import 'package:bom_app_clone/widget/drawer.dart';
<<<<<<< HEAD
=======
import 'package:bom_app_clone/widget/image.dart';
import 'package:hovering/hovering.dart';
>>>>>>> 1d3ad913df7bfeebf4551fee84a00b57feae34ed
import 'package:qr_flutter/qr_flutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;

  bool aisHovering = false;
  bool gisHovering = false;
  int _index = 0;
  int _index2 = 1;

  @override
  void initState() {
    super.initState();

    const oneSec = const Duration(seconds: 5);
    new Timer.periodic(oneSec, (Timer t) => setState(() {

      if(_crossFadeState == CrossFadeState.showFirst){
        if(_index==0){
          _index2 = 1;
          _crossFadeState = CrossFadeState.showSecond;
        }
        else if(_index==2){
          _index2 = 0;
          _crossFadeState = CrossFadeState.showSecond;
        }
        else{
          _index2 = 2;
          _crossFadeState = CrossFadeState.showSecond;          
          _index = 0;
        }
      }
      else{
        if(_index2==1){
          _index = 2;
          _crossFadeState = CrossFadeState.showFirst;
        }
        else if(_index2==0){
          _index = 1;
          _crossFadeState = CrossFadeState.showFirst;
        }
        else{
          _index = 0;
          _crossFadeState = CrossFadeState.showFirst;
        }
      }
    }));
  }

  @override
  Widget build(BuildContext context) {
    Scroll scroll = new Scroll();
    MyImage myImage = new MyImage();
    final sizes = MediaQuery.of(context).size.width;
    return Listener(
      onPointerSignal: (PointerSignalEvent event) {
        scroll.pointerSignal(event, 0);
      },
      child: Scaffold(
<<<<<<< HEAD
          appBar: appBar(context),
          endDrawer: drawer(context),
          body: Container(
            child: sizes < 1000
                ? Text("hello")
                :Row(
              children: [
                AnimatedCrossFade(
                  firstChild: phone_images(0),
                  secondChild: phone_images(1),
                  duration: const Duration(seconds:3),
                  crossFadeState: _crossFadeState,
                ),
                Stack(
                  children: [
                    Container(
                      width: 430,
                      margin: EdgeInsets.only(left: 100, top: 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '보험을 나에게 꼭📌맞게',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
=======
        appBar: appBar(context),
        endDrawer: drawer(context),
        body: Container(
          child: sizes < 1000
              ? Text("hello")
              :Row(
            children: [
              AnimatedCrossFade(
                firstChild: myImage.phone_images(_index),
                secondChild: myImage.phone_images(_index2),
                duration: const Duration(seconds:1),
                crossFadeState: _crossFadeState,
              ),
              Container(
                margin: EdgeInsets.only(left: 100, top: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '보험을 나에게 꼭📌맞게',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ishover == false ?
                        Column(
                          children: [
                            Text(
                              '보맵에서',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 43,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                    :
                    Stack(
                      children: [
                        Column(
                          children: [
                            Text(
                              '보맵에서',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 43,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        showQR(),
                      ],
                    ),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 43.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      child: Container(
                        height: 70,
                        child: AnimatedTextKit(
                          animatedTexts: [
                            RotateAnimatedText('모아보고!'),
                            RotateAnimatedText('골라보고!'),
                            RotateAnimatedText('살펴보고!'),
                          ],
                          isRepeatingAnimation: true,
                          repeatForever: true,
                          pause: const Duration(milliseconds: 3000),
                        ),
                      ),
                    ),
                    SizedBox(height: 100,),
                    Row(
                      children: [
                        HoverWidget(
                          hoverChild: SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton.icon(
                              icon: SizedBox(
                                width: 30,
                                height: 25,
                                child: new Image.asset(
                                  'assets/apple.png',
                                  color: Colors.lightBlue,
                                ),
                              ),
                              label: Text(
                                'App Store',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlue,
                                  fontSize: 17,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 0,
                              ),
                              onPressed: () {},
>>>>>>> 1d3ad913df7bfeebf4551fee84a00b57feae34ed
                            ),
                          ),
                          Text(
                            '보맵에서',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 43,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 43.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            child: Container(
                              height: 68,
                              width: 175,
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
                      bottom: 140,
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
                                      color: !gisHovering ? Colors.white : Colors.blueAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: !gisHovering ? Colors.lightBlue : Colors.white,
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
                                      color: !aisHovering ? Colors.white : Colors.blueAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: !aisHovering ? Colors.lightBlue : Colors.white,
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
                        showAQR() : Container(),
                    gisHovering ?
                        showGQR() : Container(),
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }

  showAQR() => Positioned(
    bottom: 240,
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


  showGQR() => Positioned(
    bottom: 240,
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
        data: "https://play.google.com/store/apps/details?id=com.rv2.bomapp",
        backgroundColor: Colors.white,
        size: 100,
      ),
    ),
  );
<<<<<<< HEAD

  Widget phone_images (int index) {
    return AspectRatio(
      aspectRatio: 2/5,
      child: Image.asset(imagesList[index]),
    );
  }
}
=======
}
>>>>>>> 1d3ad913df7bfeebf4551fee84a00b57feae34ed
