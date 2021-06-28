import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

dynamic appBar(BuildContext context, int page, bool isBig) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: <Widget>[
          SizedBox(
            width: 40,
          ),
          TextButton(
            onPressed: () {
              Get.toNamed('/main');
            },
            child: isBig ? Text(
              'BOMAPP',
              style: TextStyle(
                  color: page != 0 ? Colors.blue : Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600),
            ) : SizedBox(width: 100,),
          ),
        ],
      ),
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: isBig ? 42 : 0, bottom: isBig ? 8 : 0),
            child: Builder(
              builder: (context) => TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(
                                color: page != 0 ? Colors.black : Colors.white,
                                width: 2)))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: isBig ? 20 : 15, vertical: isBig ? 19 : 10),
                  child: Text(
                    '공동인증서 복사하기',
                    style: TextStyle(
                        color: page != 0 ? Colors.black : Colors.white,
                        fontSize: isBig ? 16 : 14, fontWeight: FontWeight.bold),
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
              padding: EdgeInsets.only(top: isBig ? 42 : 10, bottom:  8),
              child: Container(
                width: isBig ? 63 : 43,
                height: isBig ? 63 : 43,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: page != 0 ? Colors.blue : Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: AnimatedIconButton(
                    size: isBig ? 30 : 26,
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    duration: const Duration(milliseconds: 500),
                    splashColor: Colors.transparent,
                    icons: <AnimatedIconItem>[
                      AnimatedIconItem(
                        icon: Icon(Icons.menu,
                            color: page != 0 ? Colors.blue : Colors.white),
                      ),
                      AnimatedIconItem(
                        icon: Icon(Icons.clear,
                            color: page != 0 ? Colors.blue : Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 38,
          ),
        ],
      ),
    ],
  );
  //   AppBar(
  //   toolbarHeight: 105,
  //   leadingWidth: 300,
  //   automaticallyImplyLeading: false,
  //   backgroundColor: Colors.transparent,
  //   shadowColor: Colors.transparent,
  //   title: Row(
  //     children: <Widget>[
  //       SizedBox(
  //         width: 20,
  //       ),
  //       TextButton(
  //         onPressed: () {
  //           Get.toNamed('/main');
  //         },
  //         child: Text(
  //           'BOMAPP',
  //           style: TextStyle(
  //               color: page !=0 ? Colors.blue : Colors.white,
  //               fontSize: 32,
  //               fontWeight: FontWeight.w600),
  //         ),
  //       ),
  //     ],
  //   ),
  //   actions: [
  //     Padding(
  //       padding: const EdgeInsets.only(top: 42, bottom: 8),
  //       child: Builder(
  //         builder: (context) => TextButton(
  //           onPressed: () {},
  //           style: ButtonStyle(
  //               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
  //                   RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(5),
  //                       side: BorderSide(color: page !=0 ? Colors.black : Colors.white, width: 2)))),
  //           child: Padding(
  //             padding: const EdgeInsets.symmetric(horizontal: 20),
  //             child: Text(
  //               '공동인증서 복사하기',
  //               style: TextStyle(color: page !=0 ? Colors.black : Colors.white, fontSize: 16),
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //     SizedBox(
  //       width: 20,
  //     ),
  //     Builder(
  //       builder: (context) => Padding(
  //         padding: const EdgeInsets.only(top: 42, bottom: 8),
  //         child: DecoratedBox(
  //           decoration: BoxDecoration(
  //             border: Border.all(
  //               color: page !=0 ? Colors.blue : Colors.white,
  //               width: 2,
  //             ),
  //             borderRadius: BorderRadius.circular(5),
  //           ),
  //           child: AnimatedIconButton(
  //             size: 30,
  //             onPressed: () {
  //               Scaffold.of(context).openEndDrawer();
  //             },
  //             duration: const Duration(milliseconds: 500),
  //             splashColor: Colors.transparent,
  //             icons: <AnimatedIconItem>[
  //               AnimatedIconItem(
  //                 icon: Icon(Icons.menu, color: page !=0 ? Colors.blue : Colors.white),
  //               ),
  //               AnimatedIconItem(
  //                 icon: Icon(Icons.clear, color: page !=0 ? Colors.blue : Colors.white),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //     SizedBox(
  //       width: 38,
  //     ),
  //   ],
  // );
}
