import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_way/layouts/AlertDialog.dart';

class ActivityBox extends StatelessWidget {
  ActivityBox({Key key, this.image, this.duration, this.name})
      : super(key: key);
  final String name, image;
  final int duration;
  // user defined function
  void _showDialog(BuildContext ctx) {
    // flutter defined function showDialog(
    print('fmm');
    context:
    ctx;
    builder:
    (BuildContext context) {
      // return object of type Dialog return AlertDialog(
      title:
      new Text("Message");
      content:
      new Text("Hello World");
      actions:
      <Widget>[
        new TextButton(
            child: new Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            })
      ];
    };
  }

  // flutter defined function
  @override
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
                          Text("Duration:" + '$duration'),
                          TextButton(
                            child: Text('Woolha.com'),
                            style: TextButton.styleFrom(
                              primary: Colors.teal,
                            ),
                            onPressed: () {
                              print('Pressed');
                              _showDialog(ctx);
                              AlertDialog(title: Text("Sample Alert Dialog"));
                              var dialog = CustomAlertDialog(
                                  title: "Logout",
                                  message: "Are you sure?",
                                  onPostivePressed: () {},
                                  positiveBtnText: 'Yes',
                                  negativeBtnText: 'No');
                              showDialog(
                                  context: ctx,
                                  builder: (BuildContext context) => dialog);
                            },
                          )
                        ],
                      )))
            ])));
  }
}
