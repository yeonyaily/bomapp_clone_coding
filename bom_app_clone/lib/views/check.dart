import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  int radioVal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('manager'),
      ),
      body: Container(
        child: Row(
          children: [
            Text('02 ' + '/ 06'),
          ],
        ),
      ),
    );
  }
}
