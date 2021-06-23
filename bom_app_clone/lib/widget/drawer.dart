import 'package:flutter/material.dart';

drawer(BuildContext context){
  return Drawer(
      child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Checkout'),
              onTap: (){
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.report),
              title: Text('Transactions'),
              onTap: (){
                Navigator.pushNamed(context, '/transactionsList');
              },
            ),
          ]
      )
  );
}