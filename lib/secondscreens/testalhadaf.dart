import 'package:alhadaf/fetchScreens/testClups.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detailphoto.dart';

class TestAlhadaf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            Container(
              color: Color(0xFF808080),
              height: 180,
              width: double.infinity,
              child: Center(
                child: Image(
                  image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/logo.png?alt=media&token=2b272efe-8d01-4574-98f7-aeaa47a54141'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'الأن يمكنك حجز اختبارات العديد من الأندية \nاو حجز الأكاديمية المناسبة لك عبر خدمتنا',
              style:
                  GoogleFonts.damion(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 200,
                width: double.infinity,
                child: GridView.count(crossAxisCount: 2, children: [
                  Container(
                    child: InkWell(
                      onTap: () {

                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Image(
                              image: NetworkImage(
                                  'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/444.png?alt=media&token=70a15e21-bc75-4596-8374-28d3c5d8ace0'),
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => TestClups()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Image(
                              image: NetworkImage(
                                  'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/777.png?alt=media&token=65e95d39-0743-4d18-acbc-de23a278e63e'),
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) =>
                    DetailPhoto(
                    )));
              },
                child: Image(image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/9.png?alt=media&token=a0845b61-6bc5-4a02-a92f-e62eee573996'),
                ),
              ),
            ),
            SizedBox(height: 20,),

          ],
        ),
    );
  }
}
