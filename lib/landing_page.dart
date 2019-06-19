import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_flow/home_page.dart';
import 'package:firebase_auth_flow/service/firebase_auth_service.dart';
import 'package:firebase_auth_flow/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FirebaseAuthService auth = Provider.of<FirebaseAuthService>(context);
    return StreamBuilder<User>(
      stream: auth.onAuthStateChanged,
      builder: (context,AsyncSnapshot<User> snapshot){
        if(snapshot.connectionState == ConnectionState.active){
          User user = snapshot.data;
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