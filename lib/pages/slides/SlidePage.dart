import 'package:animate_do/animate_do.dart';
import 'package:cleanappflutter/pages/Home/HomePage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SlidePage extends StatefulWidget {
  SlidePageful createState() => new SlidePageful();
}

class SlidePageful extends State<SlidePage> {
  bool isOpenedHome = false;
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: PageView(
          dragStartBehavior: DragStartBehavior.start,
          scrollDirection: Axis.vertical,
          children: [this.elementForEachPage(), HomePage()],
        )));
  }

  Widget elementForEachPage() {
    return Container(
        height: 200,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 200, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Column(
              children: [
                SizedBox(height: 40),
                Stack(alignment: Alignment.center, children: [
                  Image(
                    color: Color.fromRGBO(0, 0, 215, 1),
                    width: 318,
                    image: AssetImage('assets/images/bubbles.png'),
                  ),
                  ZoomIn(
                      child: Image(
                    color: Colors.blue[200],
                    width: 160,
                    image: AssetImage('assets/images/boost.png'),
                  )),
                ]),
                SizedBox(height: 60),
                FadeInUp(
                    child: Text("Boost your phone",
                        style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 24,
                            color: Colors.white)))
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [this.dot()],
            )
          ],
        ));
  }

  Widget dot() {
    return FadeInUp(
        animate: true,
        child: Container(
          margin: EdgeInsets.all(2),
          child: Icon(Icons.keyboard_arrow_down, size: 50, color: Colors.white),
          decoration: BoxDecoration(
            // color: Color.fromRGBO(0, 0, 120, .7),
            borderRadius: BorderRadius.circular(50),
          ),
        ));
  }
}
