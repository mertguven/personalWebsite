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
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

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

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.isMobile
          ? AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFF0077b6),
        ),
              actions: [
                IconButton(alignment: Alignment.center,
                  padding: EdgeInsets.only(right: 10),
                  icon: Icon(
                    Icons.phone,
                    size: 30,
                  ),
                  onPressed: () {
                    launch('tel:05073791004');
                  },
                ),
              ],
              centerTitle: true,
              backgroundColor: Color(0xFF90e0ef),
              elevation: 0,
            )
          : AppBar(
              backgroundColor: Color(0xFF90e0ef),
              elevation: 0,
              actions: [
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
                Spacer(flex: 1)
              ],
            ),
      floatingActionButton: currentPage != 0
          ? FloatingActionButton(
              onPressed: () {
                setState(() {
                  _pageController.animateToPage(0,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInToLinear);
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
      drawer: context.isMobile ? Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF90e0ef),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: Icon(Icons.location_city,color: Color(0xFF03045e)),
                    title: Text("Antalya/Alanya",style: TextStyle(color: Color(0xFF03045e),fontFamily: "Poppins",fontWeight: FontWeight.bold),),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone, color: Color(0xFF03045e)),
                    title: Text("0507 379 1004",style: TextStyle(color: Color(0xFF03045e),fontFamily: "Poppins",fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_right, color: Color(0xFF03045e),size: 26,),
                    onTap: (){
                      launch('tel:05073791004');
                    },
                  ),
                ],
              ),
            ),
            Spacer(flex: 1),
            FlatButton(
                onPressed: () {
                  _pageController.animateToPage(0,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInToLinear);
                  Navigator.pop(context);
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
            SizedBox(height: 15),
            FlatButton(
                onPressed: () {
                  _pageController.animateToPage(1,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInToLinear);
                  Navigator.pop(context);
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
            SizedBox(height: 15),
            FlatButton(
                onPressed: () {
                  _pageController.animateToPage(2,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInToLinear);
                  Navigator.pop(context);
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
            SizedBox(height: 15),
            FlatButton(
                onPressed: () {
                  _pageController.animateToPage(3,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInToLinear);
                  Navigator.pop(context);
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
            SizedBox(height: 15),
            FlatButton(
                onPressed: () {
                  _pageController.animateToPage(4,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInToLinear);
                  Navigator.pop(context);
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
            Container(
              color: Colors.black87,
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
          ],
        ),
      ) : null,
      body: Column(
        children: [
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
        ],
      ),
    );
  }
}