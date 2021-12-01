import 'package:flutter/material.dart';

class SlidePage extends StatefulWidget {
  SlidePageful createState() => new SlidePageful();
}

class SlidePageful extends State<SlidePage> {
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Text("Slide page")));
  }
}
