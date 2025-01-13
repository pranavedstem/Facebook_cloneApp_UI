import 'package:facebookapp/data/mutualfriends.dart';
import 'package:facebookapp/data/notifications.dart';
import 'package:facebookapp/screens/friendsscreen.dart';
import 'package:facebookapp/screens/mainhomescreen.dart';
import 'package:facebookapp/screens/marketplace.dart';
import 'package:facebookapp/screens/menuscreen.dart';
import 'package:facebookapp/screens/notificationscreen.dart';
import 'package:facebookapp/screens/videoscreen.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    VideoScreen(),
    FriendsScreen(
      friends: mutualfriends,
    ),
    MarketPlace(),
    NotificationScreen(
      notifications: notification,
    ),
    MenuScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.ondemand_video),
              ),
              Tab(
                icon: Icon(Icons.group_outlined),
              ),
              Tab(
                icon: Icon(Icons.store_sharp),
              ),
              Tab(
                icon: Icon(Icons.notifications_none_outlined),
              ),
              Tab(
                icon: Icon(Icons.menu),
              ),
            ],
          ),
          title: const Text(
            'facebook',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.message))
          ],
        ),
        body: TabBarView(
          children: _widgetOptions,
        ),
      ),
    );
  }
}
