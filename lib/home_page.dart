// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'my_flutter_app_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int akontrol, hkontrol, dkontrol, ikontrol = 0;

  @override
  void initState() {
    akontrol = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          //Top buttonlar
          Container(
            color: Color(0xFF7f8287),
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: 1)),
                        Opacity(
                          opacity: akontrol == 1 ? 1 : 0,
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
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
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: 1)),
                        Opacity(
                          opacity: hkontrol == 1 ? 1 : 0,
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
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
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: 1)),
                        Opacity(
                          opacity: dkontrol == 1 ? 1 : 0,
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
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
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: 1)),
                        Opacity(
                          opacity: ikontrol == 1 ? 1 : 0,
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
                            color: Colors.white,
                            height: 3,
                            width: 40,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          /*Image.asset(
            "assets/images/bg.jpg",
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),*/
          Expanded(
            child: ListView(
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                //Anasayfa
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.jpg"),
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                    ),
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
                                        color: Color(0xFF7f8287),
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
                                        color: Color(0xFF7f8287),
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
                                        color: Color(0xFF7f8287),
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
                                        color: Color(0xFF7f8287),
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
                                        color: Color(0xFF7f8287),
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
                ),
                //Hakkımda
                Container(
                  child: Text(
                      "Front-end ve Mobil alanlarında kendini geliştirmeye çalışan yazılım mühendisliği öğrencisiyim."),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
