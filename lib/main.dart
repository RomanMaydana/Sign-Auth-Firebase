import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_flow/landing_page.dart';
import 'package:firebase_auth_flow/service/firebase_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<FirebaseAuthService>(
      builder: (_) => FirebaseAuthService(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: LandingPage(),
      ),
    );
  }
}
