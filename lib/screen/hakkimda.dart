import 'package:flutter/material.dart';

class Hakkimda extends StatefulWidget {
  @override
  _HakkimdaState createState() => _HakkimdaState();
}

class _HakkimdaState extends State<Hakkimda> {
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
                      Color(0xFF90e0ef),
                      Color(0xFFcaf0f8),
                    ],
                    stops: [
                      0.3,
                      0.6
                    ]
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                ),
            ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "HAKKIMDA",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0077b6),
                    letterSpacing: 2,
                    fontSize: 50),
              ),
              Center(
                child: FractionallySizedBox(
                  widthFactor: 0.75,
                  child: Text(
                    "         10 Ağustos 1998'de Manisa'nın Soma ileçesinde doğdum. İlköğretimimi Alanya'nın Hayate Hanım İlköğretim Okulunda aldım. Liseyi yine Alanya'da Alanya Teknik ve Endüstri Meslek Lisesinde okudum. Küçük yaşlarda başlayan futbola ilgimden dolayı yaklaşık 9 yıl kadar Alanya Sporun altyapı takımlarında futbol oynadım. Lise bittiğinde futbolu bırakarak üniversite sınavına hazırlandım. Manisa Celal Bayar Üniversitesi'nin Yazılım Mühendisliği bölümünü kazandım. Şuan 3. sınıftayım. İlgi duyduğum ve kodu yazdıktan sonra hemen görsel olarak sonuçlarını almak beni daha motive ettiği için Mobil ve Front-end alanlarında kendimi geliştirmeye çalışıyorum. Gelcek için hedeflerimden birisi Türkiye'nin saygın Yazılım Mühedislerinden birisi olmak.",
                    style: TextStyle(
                      color: Color(0xFF0077b6),
                      fontSize: 18,
                      letterSpacing: 1,
                      fontFamily: "Poppins",
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
