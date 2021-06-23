import 'package:flutter/material.dart';

appBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 80,
    leadingWidth: 200,
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    leading: TextButton(
      onPressed: () {},
      child: Text(
        'BOMAPP',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    ),
  );
}
