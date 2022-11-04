// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class auth_Screen extends StatefulWidget {
  const auth_Screen({Key? key}) : super(key: key);
  static const String routeName = '/auth-screen';
  @override
  State<auth_Screen> createState() => _auth_ScreenState();

  void getUserData(BuildContext context) {}
}

class _auth_ScreenState extends State<auth_Screen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("hello there from AuthScreen"),
      ),
    );
  }
}
