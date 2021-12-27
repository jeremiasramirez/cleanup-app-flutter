// import 'package:animate_do/animate_do.dart';
import 'package:animate_do/animate_do.dart';
import 'package:cleanappflutter/widgets/home/appbar.widget.dart';
import 'package:cleanappflutter/widgets/home/container-bar-items.widget.dart';
// import 'package:cleanappflutter/widgets/home/percentage.widget.dart';
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
                ContainerBarItems.build(),

                //tools
                SizedBox(height: 18),
                ContainerTools().build()
              ],
            )));
  }
}

class ContainerTools {
  Widget build() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      this.columnForTool(
        "Boost",
        "assets/images/rocket.png",
        "Virus scan",
        "assets/images/virus.png",
        "Battery saver",
        "assets/images/battery.png",
      ),
      this.columnForTool(
        "Clean",
        "assets/images/clean.png",
        "CPU cooler",
        "assets/images/cpu.png",
        "VPN",
        "assets/images/vpn.png",
      ),
      this.columnForTool(
        "App Lock",
        "assets/images/lock.png",
        "Wifi check ",
        "assets/images/wifi.png",
        "Settings",
        "assets/images/settings.png",
      )
    ]);
  }

  Widget columnForTool(String title1, String img1, String title2, String img2,
      String title3, String img3) {
    return Column(
      children: [
        this.tool(title1, img1),
        this.tool(title2, img2),
        this.tool(title3, img3)
      ],
    );
  }

  Widget tool(String title, String img) {
    return FadeInUp(
        child: Container(
            margin: EdgeInsets.only(top: 2, left: 1, right: 1),
            padding: EdgeInsets.all(8),
            width: 100,
            height: 78,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                  Image(
                      color: Colors.blue[700],
                      width: 28,
                      image: AssetImage(img)),
                  Text(title,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w700))
                ]))));
  }
}
