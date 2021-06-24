import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

Widget drawerText(String text) {
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

Widget drawerIcon(String icon){
  return TextButton(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered))
            return Colors.white;
          return Colors.grey;
        },
      ),
    ),
    onPressed: () {},
    child: Icon(
      LineIcons.values['$icon'], size: 40,
    ),
  );
}