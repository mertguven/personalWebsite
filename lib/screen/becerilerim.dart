import 'package:flutter/material.dart';

class Becerilerim extends StatefulWidget {
  @override
  _BecerilerimState createState() => _BecerilerimState();
}

class _BecerilerimState extends State<Becerilerim> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FractionallySizedBox(
        widthFactor: 0.9,
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
                ]
            ),
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
                    fontSize: 50
                ),
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //c# projeler
                      beceriKartlari(Image.asset("assets/images/c#.png"),"C#; Microsoft tarafından .NET Teknolojisi için geliştirilen modern bir programlama dilidir. Sözdizimi C-like (C benzeri) bir deneyim sunar.", "1.Sipariş uygulaması\n2.Sekiz Harf Anlamlı Kelime\n3.ProSports\n4.Sekiz Harf Anlamlı Kelime v2.0\n5.HeavySpace\n6.Sporcu Takip"),
                      SizedBox(width: 30),
                      //c projeler
                      beceriKartlari(Image.asset("assets/images/c.png"),"AT&T Bell laboratuvarlarında, Ken Thompson ve Dennis Ritchie tarafından UNIX İşletim Sistemi' ni geliştirebilmek amacıyla B dilinden türetilmiş yapısal bir programlama dilidir.", "1.Banka Yazılım Otomasyonu\n2.Personel Maaş Hesaplama Otomasyonu"),
                      SizedBox(width: 30),
                      //dart projeler
                      beceriKartlari(Image.asset("assets/images/dart.png"),"Dart, ilk kez Google tarafından geliştirilen ve daha sonraları ECMA tarafından standart haline getirilen açık kaynaklı ve genel-amaçlı bir programlama dilidir. Dart dili kullanılarak web, sunucu, mobil uygulamalar ve IoT cihazları geliştirilebilir.", "1.Scoach - for Swimming Coach(Flutter Mobile)\n2.Personal Website(Flutter web)"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget beceriKartlari(Image image, String tanim, String projeler){
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        height: 400,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
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
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
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
            ),
            Text(
              "Projelerim",
              style: TextStyle(
                color: Color(0xFF03045e),
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Text(
                  projeler,
                  style: TextStyle(
                    color: Color(0xFF03045e),
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}