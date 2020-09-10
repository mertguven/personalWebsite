import 'package:flutter/material.dart';

class Hakkimda extends StatefulWidget {
  @override
  _HakkimdaState createState() => _HakkimdaState();
}

class _HakkimdaState extends State<Hakkimda> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFeceff9),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "HAKKIMDA",
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                color: Color(0xFF8e99c7),
                letterSpacing: 2,
                fontSize: 50
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF7f8287).withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 9,
                    offset: Offset(9, 9), // changes position of shadow
                  ),
                ],
              ),
              child: Text(
                "10 Ağustos 1998'de Manisa'nın Soma ileçesinde doğdum. İlköğretimimi Alanya'nın Hayate Hanım İlköğretim Okulunda aldım. Liseyi yine Alanya'da Alanya Teknik ve Endüstri Meslek Lisesinde okudum. Küçük yaşlarda başlayan futbola ilgimden dolayı yaklaşık 9 yıl kadar Alanya Sporun altyapı takımlarında futbol oynadım. Lise bittiğinde futbolu bırakarak üniversite sınavına hazırlandım. Manisa Celal Bayar Üniversitesi'nin Yazılım Mühendisliği bölümünü kazandım. Şuan 3. sınıftayım. İlgi duyduğum ve kodu yazdıktan sonra hemen görsel olarak sonuçlarını almak beni daha motive ettiği için Mobil ve Front-end alanlarında kendimi geliştirmeye çalışıyorum. Gelcek için hedeflerimden birisi Türkiye'nin saygın Yazılım Mühedislerinden birisi olmak.",
                style: TextStyle(
                  color: Color(0xFF7f8287),
                  fontSize: 18,
                  letterSpacing: 1,
                  fontFamily: "Poppins",
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
