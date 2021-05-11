import 'package:flutter/material.dart';
import 'package:my_way/widgets/AlertScreen.dart';
import 'package:my_way/layouts/ActivityBox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My way',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(
        title: 'MyWay',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Sport'),
    Text('Entertainment'),
    Text('Productivity'),
    Text('Work'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
              child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        /*
            design MyWay main screen on activity
          */
        children: <Widget>[
          // Expanded(
          //     child: Container(
          //         child: Column(children: [
          //   _widgetOptions.elementAt(_selectedIndex),
          //   SnackBarMessage(),
          // ]))),
          ActivityBox(
              duration: 20,
              image: 'http://via.placeholder.com/350x150',
              name: 'my activity')
          //https://isorepublic.com/photo/animal-face-close-cat/
        ],
      ))),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run_sharp),
            label: 'Sport',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_very_satisfied_sharp),
            label: 'Entertainment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.score_rounded),
            label: 'Productivity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Work',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        // fixedColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
