import 'package:facebookapp/models/notificationmodel.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key, required this.notifications});
  final List<Notificationmodel> notifications;
  final List<IconData> icons = [
    Icons.cake_rounded,
    Icons.video_library_rounded,
    Icons.campaign_rounded,
    Icons.note_alt_outlined,
    Icons.image,
    Icons.person_add_alt_rounded,
    Icons.image,
    Icons.thumb_up_rounded,
    Icons.thumb_up_rounded,
    Icons.note_alt_outlined
  ];
  final List<Color> colors = [
    const Color.fromARGB(255, 240, 16, 188),
    const Color.fromARGB(227, 238, 33, 33),
    const Color.fromARGB(255, 151, 129, 4),
    const Color.fromARGB(255, 37, 86, 220),
    Color.fromARGB(255, 37, 86, 220),
    Color.fromARGB(255, 37, 86, 220),
    Color.fromARGB(255, 37, 86, 220),
    const Color.fromARGB(255, 37, 86, 220),
    const Color.fromARGB(255, 37, 86, 220),
    const Color.fromARGB(255, 37, 86, 220),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search_sharp))],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];

                return ListTile(
                  leading: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(notification.imageUrl),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Icon(
                          icons[index],
                          color: colors[index],
                          size: 25.0,
                        ),
                      ),
                    ],
                  ),
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: notification.friends,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' ${notification.text}',
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(216, 77, 70, 70),
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Text(notification.day),
                  trailing: Icon(Icons.more_horiz),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
