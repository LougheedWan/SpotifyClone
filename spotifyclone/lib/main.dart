import 'package:flutter/material.dart';

import './playlistTop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(15, 60, 15, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Good Afternoon",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  //this should be a button, but too lazy to change to stateful
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 18.0,
                  ),
                ],
              ),
            ),
            playlistTop("playlistTitle", Icon(Icons.music_note)),
          ],
        ),
      ),
    );
  }
}
