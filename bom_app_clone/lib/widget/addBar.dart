import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

appBar(BuildContext context, int page) {
  return AppBar(
    toolbarHeight: 105,
    leadingWidth: 300,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    title: Row(
      children: <Widget>[
        SizedBox(
          width: 20,
        ),
        TextButton(
          onPressed: () {
            Get.toNamed('/main');
          },
          child: Text(
            'BOMAPP',
            style: TextStyle(
                color: page !=0 ? Colors.blue : Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(top: 42, bottom: 8),
        child: Builder(
          builder: (context) => TextButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: page !=0 ? Colors.black : Colors.white, width: 2)))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '공동인증서 복사하기',
                style: TextStyle(color: page !=0 ? Colors.black : Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Builder(
        builder: (context) => Padding(
          padding: const EdgeInsets.only(top: 42, bottom: 8),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: page !=0 ? Colors.blue : Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: AnimatedIconButton(
              size: 30,
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              duration: const Duration(milliseconds: 500),
              splashColor: Colors.transparent,
              icons: <AnimatedIconItem>[
                AnimatedIconItem(
                  icon: Icon(Icons.menu, color: page !=0 ? Colors.blue : Colors.white),
                ),
                AnimatedIconItem(
                  icon: Icon(Icons.clear, color: page !=0 ? Colors.blue : Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        width: 38,
      ),
    ],
  );
}
