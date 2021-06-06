import 'package:alhadaf/secondscreens/testalhadaf.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detailphoto.dart';

class HeroAlhadaf extends StatelessWidget {
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
            SizedBox(
              height: 20,
            ),
            Text(
              'استمتع الأن بفرصة تسويق رياضي محلية \n ودولية من خلال خدماتنا لتسويق اللاعبين',
              style:
              GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 210,
                width: double.infinity,
                child: GridView.count(crossAxisCount: 2, children: [
                  Container(
                    child: InkWell(
                      onTap: () {
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 15,
                        child: Column(
                          children: [
                            Image(
                              image: NetworkImage(
                                  'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/hero%2F12.png?alt=media&token=27066cf1-970b-447b-8b70-15bb244ad007'),
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: (){},
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 15,
                        child: Column(
                          children: [
                            Image(
                              image: NetworkImage(
                                  'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/hero%2F13.png?alt=media&token=3a0997c8-0b64-46f8-b772-ed913b39cb1f'),
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Image(image: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/%D8%A3%D9%81%D8%B6%D9%84%20%D8%A7%D9%84%D9%85%D9%88%D8%A7%D9%87%D8%A8%20%20copy.png?alt=media&token=a1bd35d8-be46-4be9-8a5e-05fda50bbfb8')),
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
