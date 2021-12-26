import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
