import 'package:facebookapp/screens/login.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});
  final List<IconData> icons = [
    Icons.replay_5_rounded,
    Icons.bookmark,
    Icons.groups_2_outlined,
    Icons.ondemand_video_outlined,
    Icons.store_sharp,
    Icons.group_outlined,
    Icons.featured_play_list_outlined,
    Icons.event_busy_outlined
  ];
  final List<String> labels = [
    'Memories',
    'Saved',
    'Groups',
    'video',
    'MarketPlace',
    'Friends(17 online)',
    'Feeds',
    'Events'
  ];
  final List<Color> colors = [
    Colors.cyan,
    const Color.fromARGB(255, 212, 54, 94),
    Colors.cyan,
    Colors.cyan,
    Colors.cyan,
    Colors.cyan,
    Colors.cyan,
    const Color.fromARGB(255, 243, 13, 13),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search_sharp)),
        ],
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/sky.jpg'),
                  ),
                  title: Text(
                    'SuryaKumar Yadav',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle,
                      size: 30,
                    ),
                  ),
                  title: Text(
                    'Create new profile or Page',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                  subtitle: Text(
                    'Switch between profiles with one login',
                    style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
                childAspectRatio: 2.6,
              ),
              physics: NeverScrollableScrollPhysics(), // Disable inner scroll
              shrinkWrap: true, // Allow GridView to be part of ListView
              itemCount: icons.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          icons[index],
                          color: colors[index],
                          size: 25.0,
                          // color: Colors.blue.shade800,
                        ),
                        SizedBox(height: 5),
                        Text(
                          labels[index],
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
            margin: EdgeInsets.all(2),
            surfaceTintColor: const Color.fromARGB(255, 115, 114, 114),
            child: Center(
              heightFactor: 1.5,
              child: Text('See more'),
            ),
          ),
          Divider(),
          ListTile(
            minTileHeight: 1,
            leading: Icon(
              Icons.question_mark_rounded,
              color: Colors.blueGrey,
            ),
            title: Text('Help & support'),
            trailing: Icon(Icons.arrow_drop_down),
          ),
          Divider(),
          ListTile(
            minTileHeight: 1,
            leading: Icon(
              Icons.settings,
              color: Colors.blueGrey,
            ),
            title: Text('Settings & privacy'),
            trailing: Icon(Icons.arrow_drop_down),
          ),
          Divider(),
          ListTile(
            minTileHeight: 1,
            leading: Icon(
              Icons.grain_sharp,
              color: Colors.blueGrey,
            ),
            title: Text('Also from Meta'),
            trailing: Icon(Icons.arrow_drop_down),
          ),
          Divider(),
          Card(
            surfaceTintColor: const Color.fromARGB(255, 115, 114, 114),
            child: Center(
              heightFactor: 1.5,
              child: FilledButton.icon(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>LoginScreen()));},icon: Icon(Icons.exit_to_app_outlined), label: Text('Logout')),
            ),
          )
        ],
      ),
    );
  }
}





      //     IconButton(
      //       onPressed: () {
      //         Navigator.of(context).pushReplacement(
      //           MaterialPageRoute(
      //             builder: (ctx) => LoginScreen(),
      //           ),
      //         );
      //       },
      //       icon: Icon(Icons.logout),
      //     ),
      //     Center(
      //       child: Text('Menu Screen'),
      //     ),
      //   ],
      // ),
//     );
//   }
// }
