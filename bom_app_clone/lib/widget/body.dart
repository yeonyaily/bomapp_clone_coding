import 'package:bom_app_clone/widget/image.dart';
import 'package:bom_app_clone/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget myBody(bool isBig, BuildContext context, int page) {
  MyText myText = new MyText();
  MyImage myImage = new MyImage();
  late double width = MediaQuery.of(context).size.width;
  late double height = MediaQuery.of(context).size.height;
  return Padding(
    padding: EdgeInsets.all(isBig ? 8 : 16),
    child: ListView(
      children: [
        isBig
            ? SizedBox(
                height: height / 6,
              )
            : Container(),
        Row(
          mainAxisAlignment:
              isBig ? MainAxisAlignment.center : MainAxisAlignment.start,
          crossAxisAlignment:
              isBig ? CrossAxisAlignment.center : CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('미디어쿼리너비: ' + width.toString()),
                Text('미디어쿼리높이: ' + height.toString()),
                Text(
                  myText.header[page],
                  style: TextStyle(
                    fontSize: isBig ? height / 40 : 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: isBig ? height / 30 : 8,
                ),
                Text(
                  myText.title[page],
                  style: TextStyle(
                    fontSize: isBig ? height / 18 : 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: isBig ? height / 50 : 8,
                ),
                Text(
                  myText.description[page],
                  style: TextStyle(
                      fontSize: isBig ? height / 48 : 12,
                      color: Colors.black54),
                ),
                SizedBox(
                  height: isBig ? height / 40 : 8,
                ),
                page == 1
                    ? Text(
                        '우리동네보험 찾기',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: isBig ? height / 46 : 10,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    : Container(),
                SizedBox(
                  height: isBig ? height / 12 : 0,
                ),
              ],
            ),
            isBig
                ? SizedBox(
                    width: (width < 1100) ? (width / 14) : 120,
                  )
                : Container(),
            isBig
                ? Container(
                    child: Image.asset(
                      myImage.subImages[page - 1],
                      width: width / 3.6,
                      height: width / 3.6,
                      fit: BoxFit.fill,
                    ),
                  )
                : Container(),
          ],
        ),
        isBig
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("0${page}"),
                  Text("/06"),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.grey;
                          return Colors.black;
                        },
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed(myText.pageName[page - 1], arguments: page);
                    },
                    child: Icon(
                      Icons.keyboard_arrow_up,
                      size: 40,
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.grey;
                          return Colors.black;
                        },
                      ),
                    ),
                    onPressed: () {
                      page == myText.pageName.length - 2
                          ? null
                          : Get.toNamed(myText.pageName[page + 1],
                              arguments: page);
                    },
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 40,
                    ),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      myImage.subImages[page-1],
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
