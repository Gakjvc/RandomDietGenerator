import 'package:flutter/material.dart';
import 'food.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: homewidget(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }

  Widget homewidget() {
    return ListView();
  }
}
