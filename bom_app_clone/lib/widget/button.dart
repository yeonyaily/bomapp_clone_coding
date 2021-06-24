import 'package:flutter/material.dart';

Widget drawerItem(String text) {
  return ListTile(
    contentPadding: EdgeInsets.only(bottom: 11),
    leading: TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) return Colors.indigo;
            return Colors.white;
          },
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 34),
      ),
    ),
  );
}