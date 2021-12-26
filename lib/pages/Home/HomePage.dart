// import 'package:animate_do/animate_do.dart';
import 'package:cleanappflutter/widgets/home/appbar.widget.dart';
import 'package:cleanappflutter/widgets/home/container-bar-items.widget.dart';
// import 'package:cleanappflutter/widgets/home/percentage.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePageful createState() => new HomePageful();
}

class HomePageful extends State<HomePage> {
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBars().appBar(),
            body: ListView(
              children: [
                // container scan widget
                ContainerBarItems.build()
              ],
            )));
  }
}
