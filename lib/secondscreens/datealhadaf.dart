import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detailphoto.dart';

class DateAlhadaf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            Container(
              color: Color(0xFF808080),
              height: 160,
              width: double.infinity,
              child: Center(
                child: Image(
                  image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/logo.png?alt=media&token=2b272efe-8d01-4574-98f7-aeaa47a54141'),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: Colors.black,
                  child: RaisedButton(
                    color: Colors.black,
                      child: Text('مواعيد اختبارات الأندية',style: GoogleFonts.lato(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      onPressed: (){}),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: Colors.black,
                  child: RaisedButton(
                    color: Colors.black,
                      child: Text('مواعيد تدريب الأكاديمية',style: GoogleFonts.lato(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      onPressed: (){}),
                ),
              ),
            ),
            SizedBox(height: 40,),
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
          ],
        ),
    );
  }
}
