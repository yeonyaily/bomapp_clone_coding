import 'package:flutter/material.dart';
import 'package:get/get.dart';

appBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 80,
    leadingWidth: 200,
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    leading: TextButton(
      onPressed: () {
        Get.toNamed('/main');
      },
      child: Text(
        'BOMAPP',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    ),
    actions: [

      Builder(
        builder: (context) =>
            FloatingActionButton(
              child: Icon(Icons.menu),
              hoverColor : Colors.blue,
              foregroundColor: Colors.white,
              shape:Border.all(width: 1,color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
        //     IconButton(
        //   icon: new Icon(Icons.menu),
        //   onPressed: () {
        //     Scaffold.of(context).openEndDrawer();
        //   },
        // ),
      ),
    ],
  );
}
