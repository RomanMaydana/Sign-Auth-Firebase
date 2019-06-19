import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  Future<void> _signOut(BuildContext context) async {
    try {
      final firebaseAuth = Provider.of<FirebaseAuth>(context);
      await firebaseAuth.signOut();
    } catch (e) {
      print(e); // TODO: show dialog with error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            onPressed: ()=> _signOut(context),
          ),
        ],
      ),
    );
  }
}