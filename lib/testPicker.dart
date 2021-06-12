import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:firebase_storage/firebase_storage.dart';

class TestPicker extends StatefulWidget {
  @override
  _TestPickerState createState() => _TestPickerState();
}

class _TestPickerState extends State<TestPicker> {
  File file;
  VideoPlayerController _videoPlayerController;

  final picker = ImagePicker();

  _pickVideo() async {
    final video = await picker.getVideo(source: ImageSource.gallery);

    file = File(video.path);

    _videoPlayerController = VideoPlayerController.file(file)
      ..initialize().then((_) {
        setState(() {});

        _videoPlayerController.play();

        FirebaseStorage.instance
            .ref()
            .child('videos/${Uri.file(file.path).pathSegments.last}')
            .putFile(file);
      });
  }

  _pickVideoCamera() async {
    final video = await picker.getVideo(source: ImageSource.camera);

    file = File(video.path);

    _videoPlayerController = VideoPlayerController.file(file)
      ..initialize().then((_) {
        setState(() {});

        _videoPlayerController.play();

        FirebaseStorage.instance
            .ref()
            .child('videos/${Uri.file(file.path).pathSegments.last}')
            .putFile(file);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  '$file',
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.center,
                ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text('From Gallory'),
              trailing: Icon(Icons.photo),
              onTap: () {
                _pickVideo();
              },
            ),
            ListTile(
              title: Text('From Camera'),
              trailing: Icon(Icons.camera_alt),
              onTap: () {
                _pickVideoCamera();
              },
            ),
          ],
        ),
      ),
    );
  }
}
