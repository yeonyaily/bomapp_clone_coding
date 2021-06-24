import 'package:bom_app_clone/views/check.dart';
import 'package:bom_app_clone/views/home.dart';
import 'package:bom_app_clone/widget/addBar.dart';
import 'package:bom_app_clone/widget/drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/pointerSignal.dart';


class Manager extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    late double size = MediaQuery.of(context).size.width;

    Scroll scroll = new Scroll();
    return Listener(
      onPointerSignal: (PointerSignalEvent event) {
          scroll.pointerSignal(event, Get.arguments);
      },
      child: Scaffold(
        appBar: appBar(context),
        endDrawer: drawer(context),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('미디어쿼리너비: ' + size.toString()),
                  Text('보험 조회 & 관리',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text('보험,',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('한 눈에 모아보세요',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text('내 모든 보험은 물론 내 가족의 보험,',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text('우리동네 보험까지 한 눈에 확인할 수 있어요.',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text('우리동네보험 찾기', style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(height: 120,),
               ],
              ),
              SizedBox(width: 240),
              Column(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 2/3,
                      child: Image.asset('main-visual-2020-manager.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 60,),
                        Text('01 ', style: TextStyle(fontSize: 24),),
                        Text('/ 06', style: TextStyle(fontSize: 24, color: Colors.grey),),
                        SizedBox(width: 30),
                        Icon(Icons.keyboard_arrow_up, size: 50,),
                        SizedBox(width: 10),
                        Icon(Icons.keyboard_arrow_down, size: 50),
                      ],
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),

    );
  }


}
