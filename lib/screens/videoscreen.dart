import 'package:facebookapp/data/mutualfriends.dart';
import 'package:facebookapp/widgets/videocard.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Videos",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: VideoCard(videofr: mutualfriends));
  }
}
