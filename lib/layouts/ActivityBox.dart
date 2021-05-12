import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityBox extends StatelessWidget {
  ActivityBox({Key key, this.image, this.duration, this.name})
      : super(key: key);
  final String name, image;
  final int duration;

  Widget build(BuildContext ctx) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
              (image.contains("assets/images"))
                  ? Image.asset(image)
                  : Image.network(image, width: 200.0, height: 200),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Duration:" + '$duration')
                        ],
                      )))
            ])));
  }
}
