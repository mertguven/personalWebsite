import 'package:flutter/material.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'my_flutter_app_icons.dart';
import 'package:velocity_x/velocity_x.dart';

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
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF90e0ef),
              Color(0xFFFFFFFF),
            ],
            stops: [
              0.3,
              0.9
            ]),
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
                      color: Color(0xFF0077b6),
                      fontSize: 60,
                      letterSpacing: 10),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text(
                    "Front-end ve Mobil alanlarında kendini geliştirmeye çalışan yazılım mühendisliği öğrencisiyim.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF0077b6),
                        fontSize: 20,
                        letterSpacing: 1),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    context.isMobile ? forMobile("https://www.facebook.com/profile.php?id=100048342640662",MyFlutterApp.facebook) : forWeb("https://www.facebook.com/profile.php?id=100048342640662",MyFlutterApp.facebook),
                    SizedBox(width: 10),
                    context.isMobile ? forMobile("https://www.linkedin.com/in/mert-güven-8a0006177/",MyFlutterApp.linkedin) : forWeb("https://www.linkedin.com/in/mert-güven-8a0006177/",MyFlutterApp.linkedin),
                    SizedBox(width: 10),
                    context.isMobile ? forMobile("https://twitter.com/merttgvvn",MyFlutterApp.twitter) : forWeb("https://twitter.com/merttgvvn",MyFlutterApp.twitter),
                    SizedBox(width: 10),
                    context.isMobile ? forMobile("https://www.instagram.com/merttgvvn/",MyFlutterApp.instagram_1) : forWeb("https://www.instagram.com/merttgvvn/",MyFlutterApp.instagram_1),
                    SizedBox(width: 10),
                    context.isMobile ? forMobile("https://github.com/mertguven",MyFlutterApp.github) : forWeb("https://github.com/mertguven",MyFlutterApp.github),
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

Widget forMobile(String link, IconData facebook) {
  return Expanded(
    child: FlatButton(
        onPressed: () {
          window.open(
              link,
              "link");
        },
        hoverColor: Colors.black,
        color: Colors.white,
        shape: CircleBorder(),
        child: Container(
          height: 80,
          width: 80,
          child: Icon(
            facebook,
            size: 40,
            color: Color(0xFF0077b6),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF7f8287).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 9,
                offset:
                Offset(20, 10), // changes position of shadow
              ),
            ],
          ),
        )),
  );
}

Widget forWeb(String link, IconData facebook) {
  return FlatButton(
      onPressed: () {
        window.open(
            link,
            "link");
      },
      hoverColor: Colors.black,
      color: Colors.white,
      shape: CircleBorder(),
      child: Container(
        height: 80,
        width: 80,
        child: Icon(
          facebook,
          size: 40,
          color: Color(0xFF0077b6),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF7f8287).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 9,
              offset:
              Offset(20, 10), // changes position of shadow
            ),
          ],
        ),
      ));
}
