import 'package:flutter/material.dart';
import 'contain.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Contain(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Contain(),
                Contain(),
                Contain(),
              ],
            ),
            Contain(),
            Contain(),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Contain(),
                    Contain(),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.black26,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  ));
}
