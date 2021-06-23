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
import 'service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Service(),
      defaultTransition: Transition.native,
      getPages: [
        GetPage(name: '/main', page: () => Home()),
        GetPage(name: '/manager', page: () => Manager()),
        GetPage(name: '/check', page: () => Check()),
        GetPage(name: '/health', page: () => Health()),
        GetPage(name: '/chat', page: () => Chat()),
        GetPage(name: '/market', page: () => Market()),
        GetPage(name: '/request', page: () => Charge()),
        GetPage(name: '/info', page: () => Info()),
      ],
    );
  }
}