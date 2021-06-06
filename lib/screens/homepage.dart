import 'package:alhadaf/secondscreens/datealhadaf.dart';
import 'package:alhadaf/secondscreens/detailphoto.dart';
import 'package:alhadaf/secondscreens/gift.dart';
import 'package:alhadaf/secondscreens/heroAlhadaf.dart';
import 'package:alhadaf/secondscreens/testalhadaf.dart';
import 'package:alhadaf/secondscreens/trainerAlhadaf.dart';
import 'package:flutter/material.dart';
import '../secondscreens/training.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children:[
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
            SizedBox(height: 20,),
            myGrid(),
            SizedBox(height: 20,),
            urlLauncher(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Image(image: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/%D8%A3%D9%81%D8%B6%D9%84%20%D8%A7%D9%84%D9%85%D9%88%D8%A7%D9%87%D8%A8%20%20copy.png?alt=media&token=a1bd35d8-be46-4be9-8a5e-05fda50bbfb8')),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) =>
                    DetailPhoto()));
              },
                child: Image(image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/9.png?alt=media&token=a0845b61-6bc5-4a02-a92f-e62eee573996'),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
Widget myGrid() {
  // var size = MediaQuery.of(context).size;
  //
  // /*24 is for notification bar on Android*/
  // final double itemHeight = (size.height - kToolbarHeight - 135) / 3;
  // final double itemWidth = size.width / 2;
    return GridView.count(
        crossAxisCount: 3,
        // childAspectRatio: (itemWidth / itemHeight),
        controller: new ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        children: [
          //test screen
          Container(
            color: Colors.white,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>TestAlhadaf()));
              },
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/1.png?alt=media&token=33c932df-ac58-4574-9fe6-aafb7ddb2215'),
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
          ),
          //date screen
          Container(
            color: Colors.white,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>DateAlhadaf()));
              },
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/2.png?alt=media&token=04254807-6382-40dc-9ab3-635e7d427b31'),
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
          ),
          //hero screen
          Container(
            color: Colors.white,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>HeroAlhadaf()));
              },
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/3.png?alt=media&token=d45b7bbf-e335-4dd0-91a6-9778db9bcb38'),
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
          ),
          //training
          Container(
            color: Colors.white,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Training()));
              },
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/4.png?alt=media&token=34d38622-0440-407d-97f6-f1579209fc43'),
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
          ),
          //trainer
          Container(
            color: Colors.white,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>TrainingAlhadaf()));
              },
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/5-2.png?alt=media&token=3b74c77a-dd60-4b22-9a8a-69fa4d95d1ce'),
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
          ),
          //gift
          Container(
            color: Colors.white,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Gift()));
              },
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/6.png?alt=media&token=976f5cb5-b385-47dd-a30d-2565dca65195'),
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
          ),
          //SizedBox(height: 5,)
        ]);
}

Widget urlLauncher(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Image(image: NetworkImage(
          'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/7.png?alt=media&token=bbc8f221-5885-46d1-8406-107a5720844a')),
    );
}


}
