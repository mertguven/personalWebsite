// ignore: avoid_web_libraries_in_flutter
import "dart:html" as html;

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class Scoach extends StatefulWidget {
  @override
  _ScoachState createState() => _ScoachState();
}

class _ScoachState extends State<Scoach> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/dallas.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
        child: Container(
          child: context.isMobile ? forMobile() : forWeb(),
        ),
      ),
    );
  }
}

Widget forMobile(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      FractionallySizedBox(
        widthFactor: 0.5,
        child: Container(
          margin: EdgeInsets.all(60),
          child: Image.asset("assets/images/mockup.png",),
        ),
      ),
      Text(
        "Scoach",
        style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: "Poppins",
            letterSpacing: 2),
      ),
      SizedBox(height: 20),
      Text(
        "Sporcuların gelişimini takip ederek\nantrenman programı hazırlamak artık çok kolay!",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: "Poppins",
            letterSpacing: 1),
      ),
      SizedBox(height: 20),
      Text(
        "Sadece Google Play'de !",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
            fontFamily: "Poppins",
            letterSpacing: 1),
      ),
      SizedBox(height: 40),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: RaisedButton(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          onPressed: () {
            html.window.open("https://play.google.com/store/apps/details?id=com.mertguven.scoach","Scoach");
          },
          color: Colors.lightGreen,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                MdiIcons.googlePlay,
                size: 55,
                color: Colors.white,
              ),
              Text(
                "Hemen İndir!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: "Poppins",
                    letterSpacing: 2),
              ),
            ],
          ),
        ),
      )
    ],
  );
}

Widget forWeb(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Scoach",
            style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: "Poppins",
                letterSpacing: 2),
          ),
          SizedBox(height: 20),
          Text(
            "Sporcuların gelişimini takip ederek\nantrenman programı hazırlamak artık çok kolay!",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: "Poppins",
                letterSpacing: 1),
          ),
          SizedBox(height: 20),
          Text(
            "Sadece Google Play'de !",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontFamily: "Poppins",
                letterSpacing: 1),
          ),
          SizedBox(height: 40),
          RaisedButton(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            onPressed: () {
              html.window.open("https://play.google.com/store/apps/details?id=com.mertguven.scoach","Scoach");
            },
            color: Colors.lightGreen,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  MdiIcons.googlePlay,
                  size: 55,
                  color: Colors.white,
                ),
                Text(
                  "Hemen İndir!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: "Poppins",
                      letterSpacing: 2),
                ),
              ],
            ),
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.all(60),
        child: Image.asset("assets/images/mockup.png",),
      ),
    ],
  );
}