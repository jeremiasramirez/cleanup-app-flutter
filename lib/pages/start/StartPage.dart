import 'package:cleanappflutter/widgets/start/StartWidgets.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  StartPageFull createState() => new StartPageFull();
}

class StartPageFull extends State<StartPage> {
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: ContentStart()));
  }
}
