import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leadkart/helper/dimention.dart';

class AddImages extends StatefulWidget {
  const AddImages({Key? key}) : super(key: key);

  @override
  State<AddImages> createState() => _AddImagesState();
}

class _AddImagesState extends State<AddImages> {

  final List<String> imagePaths = [
    'assets/add_images/img.png',
    'assets/add_images/img_1.png',
    'assets/add_images/img_2.png',
    // 'assets/add_images/img.png',
    // Add more image paths if needed
  ];

  final List<String> imagePaths2 = [
    'assets/add_images/img_3.png',
    'assets/add_images/img_4.png',
    'assets/add_images/img_5.png',
    // 'assets/add_images/img.png',
    // Add more image paths if needed
  ];

  final List<String> imagePaths3 = [
    'assets/add_images/img_6.png',
    'assets/add_images/img_7.png',
    'assets/add_images/img_8.png',
    // 'assets/add_images/img.png',
    // Add more image paths if needed
  ];


  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        leading: SizedBox(),
        leadingWidth: 0,

        title: Container(
          clipBehavior: Clip.hardEdge,
          width: SC.from_height(30),
          height: SC.from_height(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            'assets/home_images/img.png',
          ),
        ),
        actions: [
          DropdownButton<String>(
            hint: Text(
              " SK e solution  ",
              style: TextStyle(color: Colors.white, fontSize: SC.from_height(18)),
            ),
            value: dropdownValue,
            icon: Transform.rotate(
              angle: 1.5708, // 90 degrees in radians (π/2 or 1.5708 radians)
              child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,size: SC.from_height(17)),
            ),
            iconSize: SC.from_height(22),
            elevation: 16,
            style: TextStyle(color: Colors.black),
            underline: Container(), // Remove the underline
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue;
                // Handle the selected option here
                print('Selected: $dropdownValue');
              });
            },
            items: <String>['SK e solution 1 ', 'SK e solution 2 ', 'SK e solution 3 ']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(color: Colors.white, fontSize: SC.from_height(18)),
                ),
              );
            }).toList(),
          ),

          SizedBox(width: SC.from_height(60)),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.call_outlined,size:  SC.from_height(17),),
                SizedBox(width: SC.from_height(4),),
                Center(child: Text('Help ?',style: TextStyle(fontSize: SC.from_height(16),color: Colors.white),),),
              ],
            ),
            width: SC.from_height(85),
            height: SC.from_height(30),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(SC.from_height(15)),border: Border.all(
                color: Colors.white
            )),
          ),
          SizedBox(width: SC.from_height(20)),
        ],
      ),

      body: ListView(
        children: [
          SizedBox(height: SC.from_height(18),),

          // AI CREATED IMAGES //
          ListTile(
            title: Text('AI Created Images',style: TextStyle(fontSize: SC.from_height(18)),),
            subtitle: Text('For Your Business',style: TextStyle(fontSize: SC.from_height(13),color: Colors.grey),),
            trailing: Text('See more',style: TextStyle(fontSize: SC.from_height(14),color: Color.fromRGBO(36, 238, 221, 1)),),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(3, (index) {
                  return Container(
                    margin: EdgeInsets.all(SC.from_height(4)),
                    width: SC.from_height(125),
                    height: SC.from_height(125),
                    // decoration: BoxDecoration(border: Border.all()),
                    // child: Image.asset('assets/add_images/img.png'),
                    child: Image.asset(imagePaths[index],fit: BoxFit.cover,),
                  );
                }),
              ),
            ),
          ),

          // BUSINESS IMAGE //
          ListTile(
            title: Text('Business Image',style: TextStyle(fontSize: SC.from_height(18)),),
            subtitle: Text('For Your Business',style: TextStyle(fontSize: SC.from_height(13),color: Colors.grey),),
            trailing: Text('See more',style: TextStyle(fontSize: SC.from_height(14),color: Color.fromRGBO(36, 238, 221, 1)),),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(3, (index) {
                  return Container(
                    margin: EdgeInsets.all(SC.from_height(4)),
                    width: SC.from_height(125),
                    height: SC.from_height(125),
                    // decoration: BoxDecoration(border: Border.all()),
                    // child: Image.asset('assets/add_images/img.png'),
                    child: Image.asset(imagePaths2[index],fit: BoxFit.cover,),
                  );
                }),
              ),
            ),
          ),

          // AYUSHMAN BHARAT DIWAS //
          ListTile(
            title: Text('Ayushman Bharat Diwas',style: TextStyle(fontSize: SC.from_height(18)),),
            subtitle: Text('Today',style: TextStyle(fontSize: SC.from_height(13),color: Colors.grey),),
            trailing: Text('See more',style: TextStyle(fontSize: SC.from_height(14),color: Color.fromRGBO(36, 238, 221, 1)),),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(3, (index) {
                  return Container(
                    margin: EdgeInsets.all(SC.from_height(4)),
                    width: SC.from_height(125),
                    height: SC.from_height(125),
                    // decoration: BoxDecoration(border: Border.all()),
                    // child: Image.asset('assets/add_images/img.png'),
                    child: Image.asset(imagePaths3[index],fit: BoxFit.cover,),
                  );
                }),
              ),
            ),
          ),

        ],
      ),
    );
  }
}