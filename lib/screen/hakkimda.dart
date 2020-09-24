import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
        widthFactor: context.isMobile ? 1 : 0.9,
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
                ]),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(context.isMobile ? 100 : 100),
              topRight: Radius.circular(context.isMobile ? 100 : 100),
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
              FractionallySizedBox(
                widthFactor: 0.75,
                child: Text(
                  "   10 Ağustos 1998'de Manisa'nın Soma ileçesinde doğdum. İlköğretimimi Alanya'nın Hayate Hanım İlköğretim Okulu'nda, lise eğitimimi Alanya Teknik ve Endüstri Meslek Lisesinde tamamladım. Küçük yaşlarda başlayan futbola ilgimden dolayı yaklaşık 9 yıl kadar Alanya Spor'un altyapı takımlarında futbol oynadım. Şuan Manisa Celal Bayar Üniversitesi'nin Yazılım Mühendisliği bölümünde okumaktayım. İlgi duyduğum ve kodu yazdıktan sonra hemen görsel olarak sonuçlarını almak beni daha motive ettiği için Mobil ve Front-end alanlarında kendimi geliştirmeye çalışıyorum.",
                  style: TextStyle(
                    color: Color(0xFF0077b6),
                    fontSize: 18,
                    letterSpacing: 1,
                    fontFamily: "Poppins",
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
