import 'package:alhadaf/widgets/chewie.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:video_player/video_player.dart';

class Person extends StatefulWidget {

  @override
  _PersonState createState() => _PersonState();
}

class _PersonState extends State<Person> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('personTalent').snapshots(),
            builder: (_,snapshot){
              if(snapshot.hasData){
                return ListView.builder(
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (_,i){
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Card(
                          child: Flexible(
                            child: Container(
                              height: 340,
                              color: Colors.white30,
                              child: Column(
                                children: [
                                //video here
                                 Container(
                                   height: 220,
                                   child: ChewieListItem(
                                     videoPlayerController: VideoPlayerController.network(snapshot.data.docs[i]['video']),
                                   ),
                                 ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0,right: 8.0),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text('كود اللعب:',style: TextStyle(fontFamily: 'Cairo',fontSize: 12,color: Colors.grey[800],fontWeight: FontWeight.bold),),
                                            SizedBox(width: 5,),
                                            Text(snapshot.data.docs[i]['code'],style: TextStyle(fontFamily: 'Cairo',fontSize: 14,color: Colors.green[600],fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                        SizedBox(width: 5,),
                                        Row(
                                          children: [
                                            Text(' مركز اللعب:',style: TextStyle(fontFamily: 'Cairo',fontSize: 12,color: Colors.grey[800],fontWeight: FontWeight.bold),),
                                            SizedBox(width: 5,),
                                            Text(snapshot.data.docs[i]['position'],style: TextStyle(fontFamily: 'Cairo',fontSize: 14,color: Colors.green[600],fontWeight: FontWeight.bold),)
                                          ],
                                        )
                                        ]
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0,right: 10.0),
                                    child: Row(
                                        children: [
                                          Row(
                                            children: [
                                              Text('البلد:',style: TextStyle(fontFamily: 'Cairo',fontSize: 12,color: Colors.grey[800],fontWeight: FontWeight.bold),),
                                              SizedBox(width: 5,),
                                              Text(snapshot.data.docs[i]['country'],style: TextStyle(fontFamily: 'Cairo',fontSize: 14,color: Colors.green[600],fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                          SizedBox(width: 5,),
                                          Row(
                                            children: [
                                              Text(' تاريخ الملاد:',style: TextStyle(fontFamily: 'Cairo',fontSize: 12,color: Colors.grey[800],fontWeight: FontWeight.bold),),
                                              SizedBox(width: 5,),
                                              Text(snapshot.data.docs[i]['DOB'],style: TextStyle(fontFamily: 'Cairo',fontSize: 14,color: Colors.green[600],fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                        ]
                                    ),
                                  ),
                              Container(
                              child: RatingBarIndicator(
                                rating: double.parse(snapshot.data
                                    .docs[i]["rat"].toString()),
                                itemBuilder:
                                    (context, index) =>
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                itemCount: 5,
                                itemSize: size.width * 0.08,
                                direction: Axis.horizontal,
                              ),
                            ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              }else{
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        )
      ),
    );
  }
}
