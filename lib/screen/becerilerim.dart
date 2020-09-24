import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class Becerilerim extends StatefulWidget {
  @override
  _BecerilerimState createState() => _BecerilerimState();
}

class _BecerilerimState extends State<Becerilerim> {

  PageController _pageController = PageController(initialPage: 0);
  int currentFlipCard = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FractionallySizedBox(
        widthFactor: context.isMobile ? 1 : 0.9,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFcaf0f8),
                  Color(0xFFFFFFFF),
                ],
                stops: [
                  0.3,
                  0.7
                ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "BECERİLERİM",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0077b6),
                    letterSpacing: 2,
                    fontSize: context.isMobile ? 35 : 50),
              ),
              FractionallySizedBox(
                widthFactor: 1,
                child: PageView(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: (val) {
                    setState(() {
                      currentFlipCard = val;
                    });
                  },
                  children: [
                    FlipCard(
                      front: beceriKartlariOn(
                          Image.asset("assets/images/c#.png"),
                          "C#; Microsoft tarafından .NET Teknolojisi için geliştirilen modern bir programlama dilidir. Sözdizimi C-like (C benzeri) bir deneyim sunar."),
                      back: beceriKartlariArka(
                          Image.asset("assets/images/c#.png"),
                          "1.Sipariş uygulaması\n2.Sekiz Harf Anlamlı Kelime\n3.ProSports\n4.Sekiz Harf Anlamlı Kelime v2.0\n5.HeavySpace\n6.Sporcu Takip"),
                    ),
                    FlipCard(
                      front: beceriKartlariOn(
                          Image.asset("assets/images/c.png"),
                          "AT&T Bell laboratuvarlarında, Ken Thompson ve Dennis Ritchie tarafından UNIX İşletim Sistemi' ni geliştirebilmek amacıyla B dilinden türetilmiş yapısal bir programlama dilidir."),
                      back: beceriKartlariArka(
                          Image.asset("assets/images/c.png"),
                          "1.Banka Yazılım Otomasyonu\n2.Personel Maaş Hesaplama Otomasyonu"),
                    ),
                    FlipCard(
                      front: beceriKartlariOn(
                          Image.asset("assets/images/dart.png"),
                          "Dart, ilk kez Google tarafından geliştirilen ve daha sonraları ECMA tarafından standart haline getirilen açık kaynaklı ve genel-amaçlı bir programlama dilidir."),
                      back: beceriKartlariArka(
                          Image.asset("assets/images/dart.png"),
                          "1.Scoach - for Swimming Coach(Flutter Mobile)\n2.Personal Website(Flutter web)"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget beceriKartlariOn(Image image, String tanim) {
    return Card(
      color: Color(0xFF90e0ef),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: context.isMobile ? 300 : 400,
        width: context.isMobile ? 300 : 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF7f8287).withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 9,
              offset: Offset(9, 9), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            Expanded(
              child: Text(
                tanim,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF03045e),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Poppins",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Projelerim",
                  style: TextStyle(
                    color: Color(0xFF03045e),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
                Icon(MdiIcons.arrowRight)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget beceriKartlariArka(Image image, String projeler) {
    return Card(
      color: Color(0xFF90e0ef),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: context.isMobile ? 300 : 400,
        width: context.isMobile ? 300 : 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF7f8287).withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 9,
              offset: Offset(9, 9), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            Text(
              "Projelerim",
              style: TextStyle(
                color: Color(0xFF03045e),
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
            SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Text(
                projeler,
                style: TextStyle(
                  color: Color(0xFF03045e),
                  fontFamily: "Poppins",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
