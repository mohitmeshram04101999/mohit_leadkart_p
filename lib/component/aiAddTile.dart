import 'package:flutter/material.dart';

import '../helper/dimention.dart';


class AiAddTile extends StatelessWidget {
  Widget icon;
  String title;
  AiAddTile({required this.icon,required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: SC.from_width(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              padding: EdgeInsets.all(SC.from_width(8)),
              // decoration: BoxDecoration(border: Border.all()),
              //item['image']!
              child: icon
            ),
          ),
          SizedBox(width: SC.from_width(3)), // Add some spacing between image and text
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: SC.from_width(15),
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1, // Adjust maxLines if you want to limit the number of lines for text
            ),
          ),
        ],
      ),
    ) ;
  }
}
