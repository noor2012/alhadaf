import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Trainning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("تدريبات رياضية").snapshots(),
        builder: (ctx,snapshot){
          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data.docs.map((document){
              var url = document['url'];
              YoutubePlayerController controller = YoutubePlayerController(
                initialVideoId: YoutubePlayer.convertUrlToId(url),
                flags: YoutubePlayerFlags(
                  autoPlay: false,
                  mute:  true
                )
              );
              return Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 4,
                  child: YoutubePlayer(
                    controller: controller,
                    liveUIColor: Colors.amber,
                  ),
                )
              );
            } ).toList(),
          );
        },
      ),
    );
  }
}
