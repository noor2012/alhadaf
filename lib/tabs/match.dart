import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Match extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('personTalent').snapshots(),
          builder: (_,snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (_,i){
                    return RatingBar.builder(
                      initialRating:snapshot.data.docs[i]['rat'] ,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    );
                  });
            }else{
              return Center(child: CircularProgressIndicator());
            }
          },
        )
      ),
    );
  }
}
