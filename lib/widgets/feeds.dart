import 'package:facebookapp/models/notificationmodel.dart';
import 'package:flutter/material.dart';

class Feeds extends StatelessWidget {
  const Feeds({super.key, required this.feedprofiles});
  final List<Notificationmodel> feedprofiles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: feedprofiles.length,
        itemBuilder: (context, index) {
          final feed = feedprofiles[index];
          return Card(
            elevation: 0,
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(feed.imageUrl),
                  ),
                  title: Text(feed.friends),
                  subtitle: Text(
                    'Follow +',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  trailing: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz_outlined),
                    label: Text('X'),
                  ),
                ),
                Image.asset(
                  feed.imageUrl,
                  height: 400,
                  width: 350,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.thumb_up_alt_outlined,
                                color: Colors.blueGrey),
                            onPressed: () {},
                          ),
                          Text("Like"),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.comment, color: Colors.blueGrey),
                            onPressed: () {},
                          ),
                          Text("Comment"),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.share, color: Colors.blueGrey),
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
      ),
    );
  }
}
