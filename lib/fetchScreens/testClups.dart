import 'package:alhadaf/sendScreens/cluporders.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class TestClups extends StatefulWidget {
  @override
  _TestClupsState createState() => _TestClupsState();
}

class _TestClupsState extends State<TestClups> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "اختر النادي المراد حجز ألاختبارات به",
                style: GoogleFonts.lato(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection('clup').snapshots(),
                builder: (ctx, snapshot) {
                  if(snapshot.hasError){
                    return Text('Check your internt');
                  }
                  if(snapshot.connectionState  == ConnectionState.waiting){
                    return Center(child: CircularProgressIndicator(),);
                  }
                  return Container(
                    height: 640,
                    width: double.infinity,
                    child: ListView.builder(
                        controller: ScrollController(keepScrollOffset: false),
                        scrollDirection: Axis.vertical,
                        itemCount: snapshot.data.docs.length,
                        itemBuilder: (_, i) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=> ClupOrders()));
                                },
                                child: Card(
                                  child: Container(
                                    height: 120,
                                    color: Colors.grey[100],
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image(
                                          image: NetworkImage(snapshot.data.docs[i]['img']),
                                          height: 100,
                                        ),
                                        SizedBox(),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25, top: 10),
                                              child: Text(
                                                snapshot.data.docs[i]['text'],
                                                style: GoogleFonts.lato(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                              ),
                                            ),
                                            SizedBox(height: 50,),
                                            // Padding(
                                            //   padding: const EdgeInsets.only(left: 10),
                                            //   child: SmoothStarRating(
                                            //     size: 30,
                                            //     color: Colors.yellow,
                                            //     borderColor: Colors.green,
                                            //   ),
                                            // ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
