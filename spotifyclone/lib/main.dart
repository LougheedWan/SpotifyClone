import 'package:flutter/material.dart';
import 'package:spotifyclone/playlistMain.dart';

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
      body: ListView(padding: EdgeInsets.only(top: 10), children: <Widget>[
        Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(15, 60, 15, 0),
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
            Container(
              padding: EdgeInsets.only(top: 17, left: 12, right: 12),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    playlistTop("playlistTitle", Icon(Icons.music_note)),
                    playlistTop("playlist with wrap", Icon(Icons.music_note)),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    playlistTop("playlistTitle", Icon(Icons.music_note)),
                    playlistTop("playlist with wrap", Icon(Icons.music_note)),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    playlistTop("playlistTitle", Icon(Icons.music_note)),
                    playlistTop("playlist with wrap", Icon(Icons.music_note)),
                  ]),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(15, 17, 15, 0),
              child: Text(
                "Recently played",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
                child: Row(
              children: [
                playlistMain("MainPlaylist", Icon(Icons.music_note)),
              ],
            ))
          ],
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.shade900,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.white70,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w300),
        onTap: (value) {},
        items: [
          BottomNavigationBarItem(
            label: "home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "library",
            icon: Icon(Icons.library_music_rounded),
          ),
        ],
      ),
    ));
  }
}
