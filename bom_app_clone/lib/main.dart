import 'package:bom_app_clone/views/home.dart';
import 'package:bom_app_clone/views/pages.dart';
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
        scaffoldBackgroundColor: Colors.blueAccent,
        canvasColor: Colors.black,
      ),
      home: Home(),
      defaultTransition: Transition.native,
      getPages: [
        GetPage(name: '/main', page: () => Home(), transition: Transition.downToUp),
        GetPage(name: '/manager', page: () => Manager(), transition: Transition.downToUp),
        GetPage(name: '/check', page: () => Check(), transition: Transition.downToUp),
        GetPage(name: '/health', page: () => Health(), transition: Transition.noTransition),
        GetPage(name: '/chat', page: () => Chat(), transition: Transition.noTransition),
        GetPage(name: '/market', page: () => Market(), transition: Transition.noTransition),
        GetPage(name: '/request', page: () => Charge(), transition: Transition.noTransition),
      ],
    );
  }
}