import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DateAcadmy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/alhadaf-a3fa2.appspot.com/o/background.jpeg?alt=media&token=018e76e8-e52d-4870-b76b-20587ec780c5'),
                fit: BoxFit.fill),
          ),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'مواعيد اختبارات الاكاديميات',
                  style: TextStyle(fontFamily: 'Cairo', fontSize: 25),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('dateAcadmy')
                      .snapshots(),
                  builder: (ctx, snapshot) {
                    if (snapshot.hasError) {
                      return Text('Check your internt');
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
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
                              padding:
                              const EdgeInsets.only(left: 20, right: 20),
                              child: InkWell(
                                onTap: () {},
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Card(
                                    child: Container(
                                      height: 120,
                                      color: Colors.white30,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image(
                                            image: NetworkImage(
                                                snapshot.data.docs[i]['img']),
                                            height: 100,
                                          ),
                                          SizedBox(),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20, top: 10),
                                                child: Text(
                                                  snapshot.data.docs[i]['name'],
                                                  style: TextStyle(
                                                      fontFamily: 'Cairo',
                                                      fontSize: 20,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      color: Colors.green[800]),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Text(
                                                  snapshot.data.docs[i]['days'],
                                                  style: TextStyle(
                                                      fontFamily: 'Cairo',
                                                      color: Colors.black87,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Text(
                                                  snapshot.data.docs[i]['time'],
                                                  style: TextStyle(
                                                      fontFamily: 'Cairo',
                                                      color: Colors.black87,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                              ),
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
      ),
    );
  }
}