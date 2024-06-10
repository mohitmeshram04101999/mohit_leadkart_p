import 'package:flutter/material.dart';
import 'package:leadkart/helper/dimention.dart';

class AddDetailScreen extends StatefulWidget {
  const AddDetailScreen({Key? key}) : super(key: key);

  @override
  State<AddDetailScreen> createState() => _AddDetailScreenState();
}

class _AddDetailScreenState extends State<AddDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SC.from_height(18),),
        child: ListView(
          children: [

            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: SC.from_height(140),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey
                ),
                borderRadius: BorderRadius.circular(SC.from_height(8))
              ),
              child: Row(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    width: SC.from_height(120),
                    height: SC.from_height(105),
                    child: Image.asset('assets/img_4.png',fit: BoxFit.cover,),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(SC.from_height(8))),
                  ),
                  SizedBox(width: SC.from_height(15),),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      Text('Lead Generation',style: TextStyle(fontWeight: FontWeight.w600,fontSize:SC.from_height(17) ,color: Color.fromRGBO(36, 238, 221, 1)),),
                      Container(
                        width: SC.from_height(90),
                        height: SC.from_height(30),
                        child: Center(child: Text('Finsihed',style: TextStyle(color: Color.fromRGBO(36, 238, 221 , 1)),),),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(36, 255, 229, 0.22),
                          border: Border.all(color: Color.fromRGBO(12, 151, 134, 1)),
                          borderRadius: BorderRadius.circular(SC.from_height(15))
                        ),
                      ),
                      Text('1 May - 10 May',style: TextStyle(color: Colors.grey,fontSize: SC.from_height(14)),),
                      Row(

                        children: [
                          SizedBox(width: SC.from_height(90)),
                          Text('See Detail >',style: TextStyle(fontWeight: FontWeight.w600,fontSize: SC.from_height(15),color: Color.fromRGBO(36, 238, 221, 1)),)
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
