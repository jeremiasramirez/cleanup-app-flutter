import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
