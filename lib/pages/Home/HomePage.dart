import 'package:animate_do/animate_do.dart';
import 'package:cleanappflutter/widgets/home/appbar.widget.dart';
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

class ContainerBarItems {
  static Widget build() {
    return Container(
        width: double.infinity,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                BubblesImages().build(),
                ScanWidget().build(),

                //
              ],
            ),
            PercentagesContainer().build()
          ],
        ),
        decoration: BoxDecoration());
  }
}

class PercentagesContainer {
  Widget build() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: 300,
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Percentage().build("80%", "Storage"),
          Percentage().build("40%", "Memory"),
          Percentage().build("70%", "ROM")
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
    );
  }
}

class Percentage {
  Widget build(String percent, String title) {
    return ZoomIn(
        from: 1,
        duration: Duration(milliseconds: 1800),
        child: Container(
            margin: EdgeInsets.only(left: 8, right: 8),
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(100)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [this.percent(percent), this.title(title)])));
  }

  Widget percent(String percent) {
    return Container(
        child: Center(
            child: Text(
      percent,
      style: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 13, color: Colors.grey[700]),
    )));
  }

  Widget title(String title) {
    return Container(
        child: Center(
            child: Text(
      title,
      style: TextStyle(fontSize: 11, color: Colors.grey[700]),
    )));
  }
}

class BubblesImages {
  Widget build() {
    return ZoomIn(
        child: Opacity(
            opacity: .1,
            child: Image(
                color: Color.fromRGBO(0, 0, 230, .4),
                width: 220,
                image: AssetImage('assets/images/bubbles.png'))));
  }
}

class ScanWidget {
  Widget optimizeButton() {
    return Container(
        width: 180,
        margin: EdgeInsets.only(top: 5),
        padding: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
        decoration: BoxDecoration(
            color: Colors.redAccent, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          "Optimize",
          style: TextStyle(color: Colors.white),
        )));
  }

  Widget build() {
    return Container(
        margin: EdgeInsets.only(left: 10, top: 10),
        width: 180,
        height: 180,
        child: Container(
            child: Center(
                child: Column(children: [
              Transform.scale(
                  scale: .7,
                  child: Image(
                      color: Colors.blue[600],
                      image: AssetImage('assets/images/clean.png'))),
              this.optimizeButton()
            ])),

            // margin: EdgeInsets.all(1),
            decoration: BoxDecoration(
                // color: Colors.blue[900],
                borderRadius: BorderRadius.circular(200))),
        decoration: BoxDecoration(
            // border: Border.all(color: Colors.grey, width: 7),
            borderRadius: BorderRadius.circular(100)));
  }
}
