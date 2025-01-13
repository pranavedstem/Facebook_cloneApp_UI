import 'package:facebookapp/data/marketdata.dart';
import 'package:facebookapp/widgets/markets.dart';
import 'package:flutter/material.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Marketplace',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search_sharp)),
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.edit_document),
                  label: Text('sell'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(130, 30),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.format_line_spacing_outlined),
                  label: Text('Categories'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(125, 30),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                ),
              ],
            ),
            Divider(),

            Expanded(
                child: Markets(
              marketdetails: marketData,
            ))
            // Column(
            //   children: [
            //     Row(mainAxisSize: MainAxisSize.min,
            //       children: [Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
            //         Image.asset('assets/images/nano.jpg',height: 200,width: 175,),
            //         SizedBox(width: 10,),
            //         Image.asset('assets/images/ace.jpg',height:200,width: 175,),
            //       ],
            //     )
            //   ],
            // )
          ],
        ));
  }
}
