//resuable widget for playlist buttons at top

import 'package:flutter/material.dart';

//playlist button, used very often in main page.
class playlistMain extends StatefulWidget {
  final String mainPlaylistTitle;
  final Icon mainPlaylistIcon;

  //constructor
  playlistMain(this.mainPlaylistTitle, this.mainPlaylistIcon);

  playlistMainState createState() => playlistMainState();
}

class playlistMainState extends State<playlistMain> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello",
      style: TextStyle(color: Colors.white),
    );
  }
}
