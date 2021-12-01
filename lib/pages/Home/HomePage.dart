import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePageful createState() => new HomePageful();
}

class HomePageful extends State<HomePage> {
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Text("Hola home")));
  }
}
