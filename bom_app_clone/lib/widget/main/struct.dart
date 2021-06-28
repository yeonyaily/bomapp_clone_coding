import 'package:bom_app_clone/service/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../service/scroll.dart';
import 'appbar.dart';
import 'body.dart';
import 'drawer.dart';

dynamic myStruct(BuildContext context, int page) {
  late var width = MediaQuery.of(context).size.width;
  var scroll = Scroll();
  return Listener(
        onPointerSignal: (event) {
          scroll.pointerSignal(event, page);
        },
        child: Stack(children: [
          Scaffold(
            backgroundColor: Colors.white,
            endDrawer: drawer(context),
            body: Stack(
              children: [
                myBody((width > 850) ? true : false, context, page),
                appBar(context, page, (width > 850) ? true : false)
              ],
            ),
            bottomNavigationBar: (width < 850)
                ? BottomAppBar(
              child: Container(
                color: const Color(0xff3372dd),
                height: 60,
                child: TextButton(
                  child: Text('BOMAPP 다운로드',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Nanum',
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () => launch('https://www.bomapp.co.kr/'),
                ),
              ),
            )
                : null,
          ),
        ]),
      );
}
