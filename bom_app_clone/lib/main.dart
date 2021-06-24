import 'package:bom_app_clone/views/charge.dart';
import 'package:bom_app_clone/views/chat.dart';
import 'package:bom_app_clone/views/check.dart';
import 'package:bom_app_clone/views/health.dart';
import 'package:bom_app_clone/views/home.dart';
import 'package:bom_app_clone/views/info.dart';
import 'package:bom_app_clone/views/manager.dart';
import 'package:bom_app_clone/views/market.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue,
        canvasColor: Colors.black,

      ),
      home: Home(),
      defaultTransition: Transition.native,
      getPages: [
        GetPage(name: '/main', page: () => Home(), transition: Transition.noTransition),
        GetPage(name: '/manager', page: () => Manager(), transition: Transition.noTransition),
        GetPage(name: '/check', page: () => Check(), transition: Transition.noTransition),
        GetPage(name: '/health', page: () => Health(), transition: Transition.noTransition),
        GetPage(name: '/chat', page: () => Chat(), transition: Transition.noTransition),
        GetPage(name: '/market', page: () => Market(), transition: Transition.noTransition),
        GetPage(name: '/request', page: () => Charge(), transition: Transition.noTransition),
        GetPage(name: '/info', page: () => Info(), transition: Transition.noTransition),
      ],
    );
  }
}