import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
import 'screens/login.dart';

void main() => runApp(Assignment2());

class Assignment2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
