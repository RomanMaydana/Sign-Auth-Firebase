import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

 Future<void> _signInAnonymously(BuildContext context) async {
    try {
      final firebaseAuth = Provider.of<FirebaseAuth>(context);
      await firebaseAuth.signInAnonymously();
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Sign in anonimus'),
          onPressed:()=> _signInAnonymously(context) ,  
        ),
      ),
    );
  }
}