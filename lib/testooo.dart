import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TestOpen extends StatefulWidget {
  @override
  _TestOpenState createState() => _TestOpenState();
}

class _TestOpenState extends State<TestOpen> {
  final _formKey = GlobalKey<FormState>();
  File file;
  String video;
  final picker = ImagePicker();
  Future getImage()async{
    final img = await picker.getVideo(source: ImageSource.gallery);
    file = File(img.path);

    setState(() {
    });
  }
  sendData()async{
    return  await FirebaseStorage.instance
        .ref()
        .child('videos/${Uri.file(  file.path).pathSegments.last}')
        .putFile(file).then((value) {
      value.ref.getDownloadURL().then((value) async {
        final videoLink = '$value';
        return await FirebaseFirestore.instance.collection('professional').add({
          'video': videoLink,
        });
      });
        });
  }

  final name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: TextFormField(
                validator: (val){
                  if(val.isEmpty){
                    return 'hmmmkj';
                  }
                },
                controller: name,
                decoration: InputDecoration(
                  labelText: 'name'
                ),
              ),
            ),
            SizedBox(height: 10,),
            MaterialButton(onPressed: (){
              getImage();
            },
              child: Text('get'),),
            SizedBox(height: 10,),
            Text('$file'),
            SizedBox(height: 10,),
            MaterialButton(onPressed: (){
              if(_formKey.currentState.validate()) {
                sendData();
              }
            },child: Text('send'),)
          ],
        ),
      ),
    );
  }
}
