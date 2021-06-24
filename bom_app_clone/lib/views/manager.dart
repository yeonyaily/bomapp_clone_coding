import 'package:bom_app_clone/widget/addBar.dart';
import 'package:bom_app_clone/widget/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../service/pointerSignal.dart';


class Manager extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    late double width = MediaQuery.of(context).size.width;
    late double height = MediaQuery.of(context).size.height;

    Widget webView() {
      return Padding(
          padding: EdgeInsets.all(8),
          child: ListView(
            children: [
              SizedBox(height: height/6,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('미디어쿼리너비: ' + width.toString()),
                      Text('미디어쿼리높이: ' + height.toString()),
                      Text('보험 조회 & 관리',
                        style: TextStyle(
                          fontSize: height/40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: height/30,),
                      Text('보험,',
                        style: TextStyle(
                          fontSize: height/18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('한 눈에 모아보세요',
                        style: TextStyle(
                          fontSize: height/18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: height/50,),
                      Text('내 모든 보험은 물론 내 가족의 보험,',
                        style: TextStyle(
                            fontSize: height/48,
                            color: Colors.black54
                        ),
                      ),
                      Text('우리동네 보험까지 한 눈에 확인할 수 있어요.',
                        style: TextStyle(
                          fontSize: height/48,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: height/40,),
                      Text('우리동네보험 찾기', style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: height/46,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                      ),
                      SizedBox(height: height/12,),
                    ],
                  ),
                  SizedBox(
                    width: (width < 1100)?
                    (width / 14) : 120,
                  ), // space between texts and phone image.
                  Container(
                    child: Image.asset(
                      'main-visual-2020-manager.png',
                      width: 400,
                      height: 400,
                      fit: BoxFit.fill,
                    ),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // floating widget (page UP/DOWN) ex)
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text('01 / 06',
                      style: TextStyle(
                        fontSize: 30,
                      ),),
                  ),
                ],
              )
            ],
          )
      );
    }

    Widget mobileView() {
      return Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('미디어쿼리너비: ' + width.toString()),
                Text('미디어쿼리높이: ' + height.toString()),
                Text('보험 조회 & 관리',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8,),
                Text('보험,',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('한 눈에 모아보세요',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8,),
                Text('내 모든 보험은 물론 내 가족의 보험,',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54
                  ),
                ),
                Text('우리동네 보험까지 한 눈에 확인할 수 있어요.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 8,),
                Text('우리동네보험 찾기', style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
                ),
                // SizedBox(height: 80,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    'main-visual-2020-manager.png',
                    width: 300,
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),

          ],
        ),
      );
    }

    Scroll scroll = new Scroll();
    return Listener(
      onPointerSignal: (PointerSignalEvent event) {
          scroll.pointerSignal(event, Get.arguments);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar(context),
        endDrawer: drawer(context),
        bottomNavigationBar:
        (width < 850) ?
        BottomAppBar(
          child: Container(
            height: 60,
            child: TextButton(
              child: Text('BOMAPP 다운로드'),
              onPressed: () => launch('https://www.bomapp.co.kr/'),
            ),
          ),
        ) : null,
        body:
        (width < 850) ?
            mobileView() : webView(),



      ),

    );
  }



}
