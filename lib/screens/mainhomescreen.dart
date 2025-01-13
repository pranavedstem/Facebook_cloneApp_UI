import 'package:facebookapp/data/notifications.dart';
import 'package:facebookapp/widgets/feeds.dart';
import 'package:facebookapp/widgets/stories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                    'assets/images/sky.jpg',
                  ),
                ),
                SizedBox(width: 6),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 1),
                      hintText: "What's on your mind?",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      isDense: true,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(width: 4),
                IconButton(
                  icon: Icon(Icons.image, color: Colors.green),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                    height: 120,
                    child: Stories(
                      profile: notification,
                    )),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(height: 5), // Spacer between the lists
                Expanded(
                    child: Feeds(
                  feedprofiles: notification,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
