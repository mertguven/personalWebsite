// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:scoachWeb/screen/anasayfa.dart';
import 'package:scoachWeb/screen/becerilerim.dart';
import 'package:scoachWeb/screen/hakkimda.dart';
import 'package:scoachWeb/screen/iletisim.dart';
import 'package:scoachWeb/screen/scoach.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int akontrol, hkontrol, dkontrol, ikontrol = 0;
  PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  void initState() {
    akontrol = 1;
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: currentPage != 0
          ? FloatingActionButton(
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
              elevation: 70,
              backgroundColor: Colors.blueAccent,
              child: Icon(
                Icons.arrow_upward,
                color: Colors.white,
                size: 35,
              ),
            )
          : Container(),
      body: Column(
        children: [
          //Top buttonlar
          Container(
            color: Color(0xFF90e0ef),
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                SizedBox(width: 15),
                Image.asset(
                  "assets/images/logo.png",
                  color: Color(0xFF03045e),
                  width: 50,
                  height: 50,
                  filterQuality: FilterQuality.high,
                ),
                Spacer(flex: 1),
                FlatButton(
                    onPressed: () {
                      _pageController.animateToPage(0,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInToLinear);
                    },
                    hoverColor: Colors.white12,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Ana Sayfa",
                            style: TextStyle(
                                color: Color(0xFF03045e),
                                fontSize: 18,
                                letterSpacing: 1)),
                        Opacity(
                          opacity: currentPage == 0 ? 1 : 0,
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
                            color: Color(0xFF03045e),
                            height: 3,
                            width: 40,
                          ),
                        ),
                      ],
                    )),
                FlatButton(
                    onPressed: () {
                      _pageController.animateToPage(1,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInToLinear);
                    },
                    hoverColor: Colors.white12,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Hakkımda",
                            style: TextStyle(
                                color: Color(0xFF03045e),
                                fontSize: 18,
                                letterSpacing: 1)),
                        Opacity(
                          opacity: currentPage == 1 ? 1 : 0,
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
                            color: Color(0xFF03045e),
                            height: 3,
                            width: 40,
                          ),
                        ),
                      ],
                    )),
                FlatButton(
                    onPressed: () {
                      _pageController.animateToPage(2,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInToLinear);
                    },
                    hoverColor: Colors.white12,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Becerilerim",
                            style: TextStyle(
                                color: Color(0xFF03045e),
                                fontSize: 18,
                                letterSpacing: 1)),
                        Opacity(
                          opacity: currentPage == 2 ? 1 : 0,
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
                            color: Color(0xFF03045e),
                            height: 3,
                            width: 40,
                          ),
                        ),
                      ],
                    )),
                FlatButton(
                    onPressed: () {
                      _pageController.animateToPage(3,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInToLinear);
                    },
                    hoverColor: Colors.white12,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Scoach",
                            style: TextStyle(
                                color: Color(0xFF03045e),
                                fontSize: 18,
                                letterSpacing: 1)),
                        Opacity(
                          opacity: currentPage == 3 ? 1 : 0,
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
                            color: Color(0xFF03045e),
                            height: 3,
                            width: 40,
                          ),
                        ),
                      ],
                    )),
                FlatButton(
                    onPressed: () {
                      _pageController.animateToPage(4,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInToLinear);
                    },
                    hoverColor: Colors.white12,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("İletişim",
                            style: TextStyle(
                                color: Color(0xFF03045e),
                                fontSize: 18,
                                letterSpacing: 1)),
                        Opacity(
                          opacity: currentPage == 4 ? 1 : 0,
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
                            color: Color(0xFF03045e),
                            height: 3,
                            width: 40,
                          ),
                        ),
                      ],
                    )),
                Spacer(flex: 1),
              ],
            ),
          ),
          //Sayfalar
          Expanded(
            child: PageView(
              physics: AlwaysScrollableScrollPhysics(),
              pageSnapping: false,
              controller: _pageController,
              scrollDirection: Axis.vertical,
              onPageChanged: (val) {
                setState(() {
                  currentPage = val;
                });
              },
              children: [
                Anasayfa(),
                Hakkimda(),
                Becerilerim(),
                Scoach(),
                Iletisim()
              ],
            ),
          ),
          currentPage == 4 ? copyright() : Container()
        ],
      ),
    );
  }
}

Widget copyright() {
  return Container(
    color: Colors.black87,
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Row(
            children: [
              Icon(
                MdiIcons.copyright,
                color: Colors.white,
              ),
              SizedBox(width: 5),
              Text(
                "2020 MERT GÜVEN",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 70),
        Container(
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  MdiIcons.facebook,
                  color: Colors.white,
                ),
                onPressed: () {
                  window.open(
                      "https://www.facebook.com/profile.php?id=100048342640662",
                      "facebook");
                },
              ),
              IconButton(
                icon: Icon(
                  MdiIcons.linkedin,
                  color: Colors.white,
                ),
                onPressed: () {
                  window.open(
                      "https://www.linkedin.com/in/mert-güven-8a0006177/",
                      "linkedin");
                },
              ),
              IconButton(
                icon: Icon(
                  MdiIcons.twitter,
                  color: Colors.white,
                ),
                onPressed: () {
                  window.open("https://twitter.com/merttgvvn", "twitter");
                },
              ),
              IconButton(
                icon: Icon(
                  MdiIcons.instagram,
                  color: Colors.white,
                ),
                onPressed: () {
                  window.open(
                      "https://www.instagram.com/merttgvvn/", "instagram");
                },
              ),
              IconButton(
                icon: Icon(
                  MdiIcons.github,
                  color: Colors.white,
                ),
                onPressed: () {
                  window.open("https://github.com/mertguven", "github");
                },
              )
            ],
          ),
        ),
      ],
    ),
  );
}
