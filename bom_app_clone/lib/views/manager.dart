import 'package:flutter/material.dart';

class Manager extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('manager'),
      ),
      body: Container(
        child: Row(
          children: [
            Text('01 ' + '/ 06'),
          ],
        ),
      ),
    );
  }
}
