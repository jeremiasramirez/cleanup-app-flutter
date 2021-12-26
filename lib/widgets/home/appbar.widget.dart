import 'package:flutter/material.dart';

class AppBars {
  AppBar appBar() {
    return AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        title: Text(
          'Cleanup Master',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Colors.black,
              fontFamily: 'ubuntu'),
        ));
  }
}
