import 'package:flutter/material.dart';
import 'package:facebookapp/models/friendsmodel.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key, required this.friends});
  final List<Friendsmodel> friends;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Friends',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_sharp)),
          Divider(),
        ],
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          final friend = friends[index];
          return Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(friend.imageUrl),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          friend.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        // const SizedBox(height: 4),
                        Text(
                          '${friend.mutual} mutual friends',
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 44, 44, 192),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 8),
                              ),
                              child: const Text(
                                'Confirm',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(width: 6),
                            FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(134, 198, 211, 240),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 45, vertical: 10)),
                              child: const Text('Delete',
                                  style: TextStyle(
                                      color: Color.fromARGB(196, 0, 0, 0))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
