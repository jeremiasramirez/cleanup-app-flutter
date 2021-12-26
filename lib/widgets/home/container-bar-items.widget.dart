// import 'package:cleanappflutter/pages/Home/HomePage.dart';
import 'package:cleanappflutter/widgets/home/percentages.widget.dart';
import 'package:cleanappflutter/widgets/home/scan.widget.dart';
import 'package:flutter/material.dart';

import 'bubble.widget.dart';

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
