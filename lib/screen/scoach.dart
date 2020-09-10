// ignore: avoid_web_libraries_in_flutter
import "dart:html" as html;

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
          constraints: BoxConstraints(
              maxHeight: size.height * 0.7, maxWidth: size.width * 0.7),
          color: Colors.black.withOpacity(0),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                Expanded(
                  child: Image.asset("assets/images/mockup.png",
                      height: size.height * 0.6, width: size.width * 0.6),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}