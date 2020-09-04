import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'my_flutter_app_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int akontrol, hkontrol, dkontrol , ikontrol = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MG",
            style: TextStyle(color: Colors.white, fontFamily: "Poppins")),
        elevation: 0,
        backgroundColor: Color(0xFFa0b2e1),
        actions: [
          FlatButton(
              onPressed: () {
                setState(() {
                  akontrol = 1;
                  hkontrol = 0;
                  dkontrol = 0;
                  ikontrol = 0;
                });
              },
              hoverColor: Colors.white12,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Ana Sayfa",
                      style: TextStyle(color: Colors.white, fontSize: 18, letterSpacing: 1)),
                  Opacity(
                    opacity: akontrol == 1 ? 1 : 0,
                    child: Container(
                      color: Colors.white,
                      height: 3,
                      width: 40,
                    ),
                  ),
                ],
              )),
          FlatButton(
              onPressed: () {
                setState(() {
                  akontrol = 0;
                  hkontrol = 1;
                  dkontrol = 0;
                  ikontrol = 0;
                });
              },
              hoverColor: Colors.white12,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Hakkımda",
                      style: TextStyle(color: Colors.white, fontSize: 18, letterSpacing: 1)),
                  Opacity(
                    opacity: hkontrol == 1 ? 1 : 0,
                    child: Container(
                      color: Colors.white,
                      height: 3,
                      width: 40,
                    ),
                  ),
                ],
              )),
          FlatButton(
              onPressed: () {
                setState(() {
                  akontrol = 0;
                  hkontrol = 0;
                  dkontrol = 1;
                  ikontrol = 0;
                });
              },
              hoverColor: Colors.white12,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Deneyimlerim",
                      style: TextStyle(color: Colors.white, fontSize: 18, letterSpacing: 1)),
                  Opacity(
                    opacity: dkontrol == 1 ? 1 : 0,
                    child: Container(
                      color: Colors.white,
                      height: 3,
                      width: 40,
                    ),
                  ),
                ],
              )),
          FlatButton(
              onPressed: () {
                setState(() {
                  akontrol = 0;
                  hkontrol = 0;
                  dkontrol = 0;
                  ikontrol = 1;
                });
              },
              hoverColor: Colors.white12,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("İletişim",
                      style: TextStyle(color: Colors.white, fontSize: 18, letterSpacing: 1)),
                  Opacity(
                    opacity: ikontrol == 1 ? 1 : 0,
                    child: Container(
                      color: Colors.white,
                      height: 3,
                      width: 40,
                    ),
                  ),
                ],
              )),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          //Arkaplan rengi
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFa0b2e1),
                    Color(0xFFa3b1e2),
                    Color(0xFFa4b2e3),
                    Color(0xFFa3b1e0),
                  ],
                  stops: [
                    0.1,
                    0.4,
                    0.7,
                    0.9
                  ]),
            ),
          ),
          //Anasayfa yazısı
          Column(
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
              Text(
                "Front-end ve Mobil alanlarında kendini geliştirmeye çalışan \n yazılım mühendisliği öğrencisiyim.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontSize: 20, letterSpacing: 1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                      onPressed: () {
                        window.open("https://www.facebook.com/profile.php?id=100048342640662","facebook");
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
                          color: Color(0xFFa3b1e2),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),

                        ),
                      )),
                  SizedBox(width: 10),
                  FlatButton(
                      onPressed: () {
                        window.open("https://www.linkedin.com/in/mert-güven-8a0006177/","linkedin");
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
                          color: Color(0xFFa3b1e2),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      )),
                  SizedBox(width: 10),
                  FlatButton(
                      onPressed: () {
                        window.open("https://twitter.com/merttgvvn","twitter");
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
                          color: Color(0xFFa3b1e2),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),

                        ),
                      )),
                  SizedBox(width: 10),
                  FlatButton(
                      onPressed: () {
                        window.open("https://www.instagram.com/merttgvvn/","instagram");
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
                          color: Color(0xFFa3b1e2),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),

                        ),
                      )),
                  SizedBox(width: 10),
                  FlatButton(
                      onPressed: () {
                        window.open("https://github.com/mertguven","github");
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
                          color: Color(0xFFa3b1e2),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),

                        ),
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
