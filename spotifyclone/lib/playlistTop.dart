//resuable widget for playlist buttons at top

import 'package:flutter/material.dart';

class playlistTop extends StatefulWidget {
  final String playlistTitle;
  final Icon playlistIcon;

  //constructor
  playlistTop(this.playlistTitle, this.playlistIcon);

  playlistTopState createState() => playlistTopState();
}

class playlistTopState extends State<playlistTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(24),
      child: Text(
        widget.playlistTitle,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
