import 'package:bom_app_clone/views/home.dart';
import 'package:bom_app_clone/views/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';


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
        scaffoldBackgroundColor: Colors.blueAccent,
        canvasColor: Colors.black,
      ),
      home: Home(),
      defaultTransition: Transition.downToUp,
      transitionDuration: Duration(seconds: 1),
      getPages: [
        GetPage(name: '/main', page: () => Home(), ),
        GetPage(name: '/manager', page: () => Manager(), ),
        GetPage(name: '/check', page: () => Check(), ),
        GetPage(name: '/health', page: () => Health(), ),
        GetPage(name: '/chat', page: () => Chat(), ),
        GetPage(name: '/market', page: () => Market(), ),
        GetPage(name: '/request', page: () => Charge(), ),
      ],

    );
  }
}