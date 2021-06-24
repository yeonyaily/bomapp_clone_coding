// import 'package:bom_app_clone/widget/addBar.dart';
// import 'package:bom_app_clone/widget/body.dart';
// import 'package:bom_app_clone/widget/drawer.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import '../service/pointerSignal.dart';
//
// class Chat extends StatelessWidget {
//   final page = 4;
//
//   @override
//   Widget build(BuildContext context) {
//     late double width = MediaQuery.of(context).size.width;
//     Scroll scroll = new Scroll();
//     return Listener(
//       onPointerSignal: (PointerSignalEvent event) {
//         scroll.pointerSignal(event, page);
//       },
//       child: Scaffold(
//         appBar: appBar(context),
//         endDrawer: drawer(context),
//         body: (width > 850)
//             ? myBody(true, context, page)
//             : myBody(false, context, page),
//         bottomNavigationBar: (width < 850)
//             ? BottomAppBar(
//                 child: Container(
//                   height: 60,
//                   child: TextButton(
//                     child: Text('BOMAPP 다운로드'),
//                     onPressed: () => launch('https://www.bomapp.co.kr/'),
//                   ),
//                 ),
//               )
//             : null,
//       ),
//     );
//   }
// }
