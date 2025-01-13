import 'package:facebookapp/models/marketmodel.dart';
import 'package:flutter/material.dart';

class Markets extends StatelessWidget {
  const Markets({super.key, required this.marketdetails});
  final List<Marketmodel> marketdetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Today\'s Picks'),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.location_on,
              color: Colors.blueAccent,
            ),
            label: Text(
              'Kochi',
              style: TextStyle(color: Colors.blueAccent),
            ),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 8.0,
          // mainAxisSpacing: 8.0,
          childAspectRatio: 1,
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          final data = marketdetails[index];
          return Column(
            children: [
              Image.asset(
                data.imageUrl,
                fit: BoxFit.cover,
                height: 150,
              ),
              // SizedBox(height: 8),
              Title(color: Colors.black, child: Text(data.name)),
              Text(data.text),
              // Title(
              //   data.text,
              //   style: TextStyle(
              //     // fontWeight: FontWeight.bold,
              //     fontSize: 16,
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}
