import 'package:cleanappflutter/pages/start/StartPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'start': (context) => new StartPage()},
      title: 'Cleanup',
      initialRoute: 'start',
    );
  }
}
