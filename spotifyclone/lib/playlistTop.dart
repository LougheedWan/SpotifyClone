//resuable widget for playlist buttons at top

import 'package:flutter/material.dart';

class playlistTop extends StatefulWidget {
  final String playlistTitle;
  //TODO: change this to imageIcon
  final Icon playlistIcon;

  //constructor
  playlistTop(this.playlistTitle, this.playlistIcon);

  playlistTopState createState() => playlistTopState();
}

class playlistTopState extends State<playlistTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 180,
      height: 60,
      child: ElevatedButton.icon(
        label: Container(
          width: 100.0,
          child: Text(
            widget.playlistTitle,
            softWrap: true,
          ),
        ),
        icon: widget.playlistIcon,
        style: ElevatedButton.styleFrom(
          primary: Colors.grey.shade900,
          padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        ),
        onPressed: () {
          Null;
        },
      ),
    );
  }
}
