import 'package:facebookapp/models/friendsmodel.dart';
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key, required this.videofr});
  final List<Friendsmodel> videofr;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videofr.length, 
      itemBuilder: (context, index) {
        final neww = videofr[index];
        return Card(
          elevation: 0,
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(neww.imageUrl),
                ),
                title: Text(neww.name),
                subtitle: Text(
                  'Follow',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                trailing: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz_outlined),
                  label: Text('X'),
                ),
              ),
              Container(
                height: 400,
                color: Colors.black26, // Placeholder for the video
                child: Center(
                  child: Icon(
                    Icons.play_circle_fill,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.thumb_up_alt_outlined,
                              color: Colors.blue),
                          onPressed: () {},
                        ),
                        Text("Like"),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.comment, color: Colors.grey),
                          onPressed: () {},
                        ),
                        Text("Comment"),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.share, color: Colors.green),
                          onPressed: () {},
                        ),
                        Text("Share"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
