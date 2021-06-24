import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/material.dart';
import 'button.dart';

drawer(BuildContext context) {
  return Container(
    width: 400,
    color: Colors.black,
    child: Drawer(

      child: ListView(
        padding: EdgeInsets.only(left: 75),
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            height: 140,
            child: Padding(
              padding: const EdgeInsets.only(top: 42, right: 35),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: AnimatedIconButton(
                  size: 30,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  duration: Duration(milliseconds: 1),
                  splashColor: Colors.transparent,
                  icons: <AnimatedIconItem>[
                    AnimatedIconItem(
                      icon: Icon(Icons.clear, color: Colors.white),
                    ),
                    AnimatedIconItem(
                      icon: Icon(Icons.menu, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          drawerText("서비스 소개"),
          drawerText("회사 소개"),
          drawerText("신용정보원 안내"),
          drawerText("공동인증서 복사"),
          drawerText("보맵파트너"),
          drawerText("채용"),
          SizedBox(
            height: 25,
          ),
          Text(
            'Digital\nInsurance\nPlatform\nㅡ',
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              drawerIcon("instagram"),
              drawerIcon("facebook"),
              drawerIcon("blog"),
              drawerIcon("youtube"),
            ],
          ),
        ],
      ),
    ),
  );
}