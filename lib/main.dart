import 'package:flutter/material.dart';
import 'package:my_way/data/DBManager.dart';
import 'package:my_way/pages/HomePage.dart';
import 'package:my_way/data/adapters/activity_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:io/io.dart';
import 'package:async/async.dart';

import 'package:hive/hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.registerAdapter(ActivityModelAdapter());
  Hive.init(appDocumentDir.path);

  var am1 = ActivityModel()
    ..name = 'Run'
    ..duration = '40'
    ..imageUrl =
        'https://neilpatel.com/wp-content/uploads/2017/09/image-editing-tools.jpg';
  DBManager dbManager = DBManager();
  dbManager.addACtivity(am1);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}
