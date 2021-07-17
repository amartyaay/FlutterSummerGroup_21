import 'package:flutter/material.dart';

class Greetings extends StatelessWidget {
  Greetings({this.id = 'Unkown'});
  final String id;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                id,
                style: TextStyle(
                  color: Color(0xff2FC4B2),
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
