import 'package:flutter/material.dart';

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
