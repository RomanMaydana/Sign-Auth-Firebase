import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_flow/home_page.dart';
import 'package:firebase_auth_flow/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseAuth = Provider.of<FirebaseAuth>(context);
    return StreamBuilder<FirebaseUser>(
      stream: firebaseAuth.onAuthStateChanged,
      builder: (context,snapshot){
        if(snapshot.connectionState == ConnectionState.active){
          FirebaseUser user = snapshot.data;
          if(user == null)  	
            return SignInPage();
          return HomePage();
        }else{
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        
      },
    );
  }
}