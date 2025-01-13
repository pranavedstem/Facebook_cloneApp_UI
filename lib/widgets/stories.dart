import 'package:facebookapp/models/notificationmodel.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({super.key, required this.profile});
  final List<Notificationmodel> profile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(

        scrollDirection: Axis.horizontal,
        itemCount: profile.length,
        itemBuilder: (context, index) {
          final image = profile[index];
          return  Stack(children: [
            Card(
              margin: EdgeInsets.symmetric(horizontal: 3.0),
              color: const Color.fromARGB(255, 91, 103, 122),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 70,
                    child: Center(
                      child: Text(
                        image.friends,
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 5,
                left: 7,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(image.imageUrl),
                )),
          ]);
        },
      ),
    );
  }
}
