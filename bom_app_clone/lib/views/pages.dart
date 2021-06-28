import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/main/struct.dart';

class Manager extends StatelessWidget {
  final page = 1;
  @override
  Widget build(BuildContext context) {
    return myStruct(context, page);
  }
}

class Check extends StatelessWidget {
  final page = 2;
  @override
  Widget build(BuildContext context) {
    return myStruct(context, page);
  }
}

class Health extends StatelessWidget {
  final page = 3;
  @override
  Widget build(BuildContext context) {
    return myStruct(context, page);
  }
}

class Chat extends StatelessWidget {
  final page = 4;
  @override
  Widget build(BuildContext context) {
    return myStruct(context, page);
  }
}

class Market extends StatelessWidget {
  final page = 5;
  @override
  Widget build(BuildContext context) {
    return myStruct(context, page);
  }
}

class Charge extends StatelessWidget {
  final page = 6;
  @override
  Widget build(BuildContext context) {
    return myStruct(context, page);
  }
}
