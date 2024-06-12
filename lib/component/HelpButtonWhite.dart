import 'package:flutter/material.dart';

import '../helper/dimention.dart';



class HelpButton extends StatelessWidget {
  void Function()? onPress;
  Widget? icon;
  String text;
  HelpButton({this.onPress,super.key, required this.text, this.icon});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: SC.from_height(30),

      //Outlin Button
      child: OutlinedButton(

        //Button Style
          style: ButtonStyle(
            iconColor: MaterialStateProperty.resolveWith((states) => Colors.white),
              side: MaterialStateProperty.resolveWith((states) => BorderSide(color: Colors.white))
          ),
          onPressed:onPress,

          //Icon and Text
          child: Row(
            children: [
              icon!,
              SizedBox(width: SC.from_width(5),),
              Text(text,style: TextStyle(
                  color: Colors.white
              )),
            ],
          )),
    );
  }
}
