import 'package:animate_do/animate_do.dart';
import 'package:cleanappflutter/pages/Home/HomePage.dart';
import 'package:cleanappflutter/pages/slides/SlidePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentStart extends StatefulWidget {
  ContentStartFull createState() => new ContentStartFull();
}

class ContentStartFull extends State<ContentStart> {
  bool isLoading = false;

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromRGBO(30, 10, 200, 1),
              Color.fromRGBO(70, 10, 200, 1)
            ])),
            child: Scaffold(
                backgroundColor: Color.fromRGBO(0, 0, 0, .0),
                body: Column(
                  children: [
                    this.containImage(),
                    this.descriptionStart(),
                    // this.button(),
                    this.loadingIndicator(context)
                  ],
                ))));
  }

  Widget loadingIndicator(context) {
    if (this.isLoading == true)
      return Container(
          margin: EdgeInsets.only(top: 20),
          child: ZoomIn(
              child: CircularProgressIndicator(
                  backgroundColor: Colors.blue[900],
                  strokeWidth: 2.1,
                  color: Colors.white)));

    return this.button(context);
  }

  void toHome(context) {
    Future.delayed(Duration(seconds: 3), () => true).then((value) => {
          setState(() {
            if (value == true) {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => new SlidePage()));
            }
          })
        });
  }

  ClipRRect button(context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
          // widths
          width: 240,
          margin: EdgeInsets.only(top: 10),
          // decoration
          decoration: BoxDecoration(
              color: Color.fromRGBO(10, 10, 200, 1),
              borderRadius: BorderRadius.circular(8)),
          // buttons
          child: TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.all(20)),
            child: Text("START",
                style: TextStyle(color: Colors.white, fontSize: 13)),
            // click on button
            onPressed: () {
              setState(() {
                this.isLoading = true;
              });

              Future.delayed(Duration(milliseconds: 250), () => true)
                  .then((value) {
                this.loadingIndicator(context);
                this.toHome(context);
              });
            },
          )),
    );
  }

  BounceInDown descriptionStart() {
    return BounceInDown(
        from: 30,
        child: Container(
            padding: EdgeInsets.only(left: 50, top: 60, right: 45, bottom: 10),
            child: Text("Start scanning your mobile for errors and hidden junk",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Colors.grey[400]))));
  }

  Positioned decorate() {
    return Positioned(
        top: 10,
        left: 0,
        height: 100,
        width: 100,
        child: Image(image: AssetImage("assets/images/boost.png"), width: 50));
  }

  Container containImage() {
    return Container(
        width: double.infinity,
        height: 300,
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 140, bottom: 10),
        // decoration: BoxDecoration(color: Colors.red),
        child: Container(
            height: 140,
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
            decoration: BoxDecoration(
                color: Color.fromRGBO(0, 10, 200, 1),
                borderRadius: BorderRadius.circular(100)),
            child: ZoomIn(
                child: Transform.scale(
                    scale: .7,
                    child: Image(
                        image: AssetImage("assets/images/boost.png"),
                        width: 120.0)))));
  }
}
