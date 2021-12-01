import 'package:cleanappflutter/pages/Home/HomePage.dart';
import 'package:cleanappflutter/pages/slides/SlidePage.dart';
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
        routes: <String, WidgetBuilder>{
          '/': (context) => new StartPage(),
          '/slide': (context) => new SlidePage(),
          '/home': (context) => new HomePage()
        },
        title: 'Cleanup',
        initialRoute: '/');
  }
}
