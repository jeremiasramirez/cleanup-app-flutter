import 'package:cleanappflutter/widgets/home/percentage.widget.dart';
import 'package:flutter/material.dart';

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
