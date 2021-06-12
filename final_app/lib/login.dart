import 'package:final_app/application_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:provider/provider.dart';


class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Consumer<ApplicationState>(
        builder: (context, user, child) {
          return Scaffold(
            body: SafeArea (
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment:  MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/diamond.png'),
                        width: 130,
                        height: 130,
                      ),
                      RaisedButton(
                          child: Text('google sign in'),
                          onPressed: () async {
                            Provider.of<ApplicationState>(context, listen: false).signInWithGoogle();
                            await Navigator.pushNamed(context, '/home');
                          }
                      ),
                      FlatButton(
                          child:Text('anonymous log in'),
                          onPressed: () async {
                            Provider.of<ApplicationState>(context, listen: false).signInAnonymously();
                            await Navigator.pushNamed(context, '/home');
                          }
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
    });
  }
}
