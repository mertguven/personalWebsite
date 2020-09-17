import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'my_flutter_app_icons.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/vp.png"),
        ),
        /*gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF8e99c7),
              Color(0xFFa0ade1),
              Color(0xFFc1c9e4),
            ],
            stops: [
              0.2,
              0.4,
              0.9
            ]
        ),*/
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  "https://instagram.fayt2-1.fna.fbcdn.net/v/t51.2885-19/s150x150/66243095_712452122526807_5112435250445680640_n.jpg?_nc_ht=instagram.fayt2-1.fna.fbcdn.net&_nc_ohc=SF4rzNZjlIAAX8BwERC&oh=561ba2db6fc7f22ef1ba87bb001562a1&oe=5F7D0C0F"),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "MERT GÜVEN",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontSize: 60,
                      letterSpacing: 10),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 20, vertical: 20),
                  child: Text(
                    "Front-end ve Mobil alanlarında kendini geliştirmeye çalışan yazılım mühendisliği öğrencisiyim.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 1),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                        onPressed: () {
                          window.open(
                              "https://www.facebook.com/profile.php?id=100048342640662",
                              "facebook");
                        },
                        hoverColor: Colors.black,
                        color: Colors.white,
                        shape: CircleBorder(),
                        child: Container(
                          height: 80,
                          width: 80,
                          child: Icon(
                            MyFlutterApp.facebook,
                            size: 40,
                            color: Color(0xFF8e99c7),
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(100),
                          ),
                        )),
                    SizedBox(width: 10),
                    FlatButton(
                        onPressed: () {
                          window.open(
                              "https://www.linkedin.com/in/mert-güven-8a0006177/",
                              "linkedin");
                        },
                        hoverColor: Colors.black,
                        color: Colors.white,
                        shape: CircleBorder(),
                        child: Container(
                          height: 80,
                          width: 80,
                          child: Icon(
                            MyFlutterApp.linkedin,
                            size: 40,
                            color: Color(0xFF8e99c7),
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(100),
                          ),
                        )),
                    SizedBox(width: 10),
                    FlatButton(
                        onPressed: () {
                          window.open(
                              "https://twitter.com/merttgvvn",
                              "twitter");
                        },
                        hoverColor: Colors.black,
                        color: Colors.white,
                        shape: CircleBorder(),
                        child: Container(
                          height: 80,
                          width: 80,
                          child: Icon(
                            MyFlutterApp.twitter,
                            size: 40,
                            color: Color(0xFF8e99c7),
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(100),
                          ),
                        )),
                    SizedBox(width: 10),
                    FlatButton(
                        onPressed: () {
                          window.open(
                              "https://www.instagram.com/merttgvvn/",
                              "instagram");
                        },
                        hoverColor: Colors.black,
                        color: Colors.white,
                        shape: CircleBorder(),
                        child: Container(
                          height: 80,
                          width: 80,
                          child: Icon(
                            MyFlutterApp.instagram_1,
                            size: 40,
                            color: Color(0xFF8e99c7),
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(100),
                          ),
                        )),
                    SizedBox(width: 10),
                    FlatButton(
                        onPressed: () {
                          window.open(
                              "https://github.com/mertguven",
                              "github");
                        },
                        hoverColor: Colors.black,
                        color: Colors.white,
                        shape: CircleBorder(),
                        child: Container(
                          height: 80,
                          width: 80,
                          child: Icon(
                            MyFlutterApp.github,
                            size: 40,
                            color: Color(0xFF8e99c7),
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(100),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}