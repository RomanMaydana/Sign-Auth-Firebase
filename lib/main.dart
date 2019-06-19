import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_flow/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<FirebaseAuth>(
      builder: (_) => FirebaseAuth.instance,
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: LandingPage(),
      ),
    );
  }
}
