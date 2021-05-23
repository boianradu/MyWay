import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_way/layouts/ActivityBox.dart';

class ActivityPage extends StatelessWidget {
  ActivityPage({Key key, this.title, this.currentPage}) : super(key: key);
  final String title;
  final Widget currentPage;

  Widget build(BuildContext ctx) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(2),
        children: <Widget>[
          currentPage,
          ActivityBox(
              duration: 20,
              // image: 'http://via.placeholder.com/350x150',
              image: "assets/images/brd.png",
              name: 'my activity'),
          ActivityBox(
              duration: 20,
              image:
                  'https://64.media.tumblr.com/f3abe58072d8da2f618260b33b50be8a/tumblr_piq7v63YA21vnoon8o1_540.jpg',
              name: 'my activity'),
          ActivityBox(
              duration: 20,
              // image: 'http://via.placeholder.com/350x150',
              image: "assets/images/brd.png",
              name: 'my activity'),
          ActivityBox(
              duration: 20,
              image:
                  'https://64.media.tumblr.com/f3abe58072d8da2f618260b33b50be8a/tumblr_piq7v63YA21vnoon8o1_540.jpg',
              name: 'my activity'),
          ActivityBox(
              duration: 20,
              // image: 'http://via.placeholder.com/350x150',
              image: "assets/images/brd.png",
              name: 'my activity'),
          ActivityBox(
              duration: 20,
              image:
                  'https://64.media.tumblr.com/f3abe58072d8da2f618260b33b50be8a/tumblr_piq7v63YA21vnoon8o1_540.jpg',
              name: 'my activity'),
          ActivityBox(
              duration: 20,
              // image: 'http://via.placeholder.com/350x150',
              image: "assets/images/brd.png",
              name: 'my activity'),
          ActivityBox(
              duration: 20,
              image:
                  'https://64.media.tumblr.com/f3abe58072d8da2f618260b33b50be8a/tumblr_piq7v63YA21vnoon8o1_540.jpg',
              name: 'my activity'),
          ActivityBox(
              duration: 20,
              // image: 'http://via.placeholder.com/350x150',
              image: "assets/images/brd.png",
              name: 'my activity'),
          ActivityBox(
              duration: 20,
              image:
                  'https://64.media.tumblr.com/f3abe58072d8da2f618260b33b50be8a/tumblr_piq7v63YA21vnoon8o1_540.jpg',
              name: 'my activity'),
          ActivityBox(
              duration: 20,
              // image: 'http://via.placeholder.com/350x150',
              image: "assets/images/brd.png",
              name: 'my activity'),
          ActivityBox(
              duration: 20,
              image:
                  'https://64.media.tumblr.com/f3abe58072d8da2f618260b33b50be8a/tumblr_piq7v63YA21vnoon8o1_540.jpg',
              name: 'my activity'),
          ActivityBox(
              duration: 20,
              // image: 'http://via.placeholder.com/350x150',
              image: "assets/images/brd.png",
              name: 'my activity'),
          ActivityBox(
              duration: 20,
              image:
                  'https://64.media.tumblr.com/f3abe58072d8da2f618260b33b50be8a/tumblr_piq7v63YA21vnoon8o1_540.jpg',
              name: 'my activity'),
        ],
      ),
    );
  }
}
