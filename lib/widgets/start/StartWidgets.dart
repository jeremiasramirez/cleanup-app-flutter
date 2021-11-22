import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ContentStart extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [this.containImage(), this.button()],
    );
  }

  ClipRRect button() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          // padding: EdgeInsets.only(top: 3, bottom: 3, left: 30, right: 30),
          decoration: BoxDecoration(color: Colors.grey[200]),
          child: FlatButton(
            child: Text("START",
                style: TextStyle(color: Colors.black, fontSize: 13)),
            onPressed: () => {},
            minWidth: 200,
          ),
        ));
  }

  Container containImage() {
    return Container(
        width: double.infinity,
        height: 400,
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 130, bottom: 60),
        // decoration: BoxDecoration(color: Colors.red),
        child: Container(
            height: 140,
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(100)),
            child: ZoomIn(
                child: Image(
                    image: AssetImage("assets/images/cleanup.svg"),
                    width: 120.0))));
  }
}
