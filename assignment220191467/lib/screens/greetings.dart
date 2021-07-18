import 'package:flutter/material.dart';

class Greetings extends StatelessWidget {
  Greetings({this.id = 'Unkown'});
  final String id;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to CRuX Flutter Summer Group 2021',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              id,
              style: TextStyle(
                color: Color(0xff2FC4B2),
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Have a great journey ahead!!!!!',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
