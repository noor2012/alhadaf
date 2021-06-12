import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SelectFile extends StatefulWidget {
  @override
  _SelectFileState createState() => _SelectFileState();
}

class _SelectFileState extends State<SelectFile> {

  final _key = GlobalKey<FormState>();
  final name = TextEditingController();

  sendData()async{
    if(_key.currentState.validate()){
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Center(
          child:Column(
            children: [
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                  labelText: 'name'
                ),
              ),
              RaisedButton(
                child: Text('click'),
                onPressed: (){
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}