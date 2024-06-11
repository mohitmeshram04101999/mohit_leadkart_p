import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:leadkart/helper/dimention.dart';

class AdsPage extends StatefulWidget {
  const AdsPage({Key? key}) : super(key: key);

  @override
  State<AdsPage> createState() => _AdsPageState();
}

class _AdsPageState extends State<AdsPage> {
  int _selectedValue = 1;

  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
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

          SizedBox(height: SC.from_height(15),),

          Padding(
            padding:   EdgeInsets.symmetric(horizontal:SC.from_height(18) ),
            child: Text('How ads report will look',style: TextStyle(fontSize: SC.from_height(16),fontWeight: FontWeight.w600),),
          ),
          SizedBox(height: SC.from_height(7),),
          Padding(
            padding:   EdgeInsets.symmetric(horizontal:SC.from_height(18) ),
            child: Text('You can see your ad performance in real time',style: TextStyle(fontSize: SC.from_height(15),color: Colors.grey),),
          ),

          SizedBox(height: SC.from_height(18),),


          Container(
            margin: EdgeInsets.symmetric(horizontal:SC.from_height(15)),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300, // Shadow color
                  spreadRadius: 0.5, // Spread radius
                  blurRadius: 5, // Blur radius
                  offset: Offset(0, 1), // Offset in x and y direction
                ),
              ],

            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:   EdgeInsets.only(left: SC.from_height(8),top: SC.from_height(8)),
                      child: Text('01 May to 10 May, 2023 ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: SC.from_height(14)),),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: SC.from_height(8)),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 233, 233, 1),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(SC.from_height(5)), // Adjust the radius value as needed
                          bottomLeft: Radius.circular(SC.from_height(15)), // Adjust the radius value as needed
                        ),
                      ),
                      height: SC.from_height(25),
                      child: Text('Demo Ad',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(13) )),
                    ),
                  ],
                ),
                SizedBox(height: SC.from_height(8),),

                //GET NEW LEADS  '//
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: SC.from_height(5)),
                  child: Row(
                    children: [
                      Text('Get New leads', style: TextStyle(color: Color.fromRGBO(36, 238, 221, 1),fontWeight: FontWeight.w600,fontSize: SC.from_height(17)),),
                      SizedBox(width: SC.from_height(5)),

                      SizedBox(width: SC.from_height(43)),
                      Container(
                        width: SC.from_height(18),
                        height: SC.from_height(18),
                        child: Image.asset('assets/facebook.png'),
                      ),
                      SizedBox(width: SC.from_height(13)),
                      Container(
                        width: SC.from_height(18),
                        height: SC.from_height(18),
                        child: Image.asset('assets/add_images/insta.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SC.from_height(8),),
                Padding(
                  padding: EdgeInsets.only(
                    left: SC.from_height(10),
                    right: SC.from_height(10),
                    bottom: SC.from_height(10),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            clipBehavior: Clip.hardEdge,
                            width: SC.from_height(124),
                            height: SC.from_height(124),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(SC.from_height(10))),
                            child: Image.asset('assets/add_images/9.png'),
                          )
                        ],
                      ),
                      Column(

                        children: [
                          Row(
                            children: [
                              SizedBox(width: SC.from_height(30)),
                              Text('50,000',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(16) ),),
                              SizedBox(width: SC.from_height(10)),

                              Text('Reach',style: TextStyle(color: Colors.grey,fontSize:SC.from_height(15) )),
                            ],
                          ),
                          SizedBox(height: SC.from_height(8),),
                          Row(
                            children: [
                              Text('180', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(16) ),),
                              SizedBox(width: SC.from_height(10)),
                              Text('Leads',style: TextStyle(color: Colors.grey,fontSize:SC.from_height(15) )),
                            ],
                          ),
                          SizedBox(height: SC.from_height(8),),

                          Row(
                            children: [
                              Text('456', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(16) ),),
                              SizedBox(width: SC.from_height(10)),
                              Text('Spent',style: TextStyle(color: Colors.grey,fontSize:SC.from_height(15) )),
                            ],
                          ),
                          SizedBox(height: SC.from_height(8),),
                          Row(
                            children: [
                              Text('456', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(16) ),),
                              SizedBox(width: SC.from_height(10)),
                              Text('Clicks',style: TextStyle(color: Colors.grey,fontSize:SC.from_height(15) )),
                            ],
                          ),
                        ],
                      ),


                    ],
                  ),
                ),
                SizedBox(height: SC.from_height(15)),

                // VIEW REPORTS //
                Padding(
                  padding:  EdgeInsets.only(right: 8.0),
                  child: Column(

                    children: [
                      Text(
                        'View Reports',
                        style: TextStyle(
                          color: Color.fromRGBO(36, 238, 221, 1),
                          fontSize: SC.from_height(15),

                          // This adds the underline
                        ),
                      ),
                      Container(height: SC.from_height(1),width: SC.from_height(85),child: Divider(thickness: 1,color: Color.fromRGBO(36, 238, 221, 1) ,)),
                    ],
                  ),
                ),

                SizedBox(height: SC.from_height(20)),
              ],
            ),
          ),

          SizedBox(height: SC.from_height(18),),



          // RECOMMENDATION //
          Container(

            margin: EdgeInsets.symmetric(horizontal:SC.from_height(15)),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300, // Shadow color
                  spreadRadius: 0.5, // Spread radius
                  blurRadius: 5, // Blur radius
                  offset: Offset(0, 1), // Offset in x and y direction
                ),
              ],

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(199, 255, 222, 1),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(SC.from_height(18)), // Adjust the radius value as needed
                      topLeft: Radius.circular(SC.from_height(8)), // Adjust the radius value as needed
                    ),
                  ),
                  height: SC.from_height(25),
                  child: Text('Recommendation',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(13) )),
                ),
                SizedBox(height: SC.from_height(8),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: SC.from_height(5)),
                  child: Row(
                    children: [
                      Text('Get New leads', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: SC.from_height(17)),),
                      SizedBox(width: SC.from_height(5)),

                      Expanded(child: Container()),
                      Text('Duration : 30 days',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
                SizedBox(height: SC.from_height(8),),
                Padding(
                  padding: EdgeInsets.only(
                    left: SC.from_height(10),
                    right: SC.from_height(10),
                    bottom: SC.from_height(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Lead',style: TextStyle(color: Colors.grey,fontSize:SC.from_height(16) )),
                          SizedBox(height: SC.from_height(5)),
                          Text('200',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(16) ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Reach',style: TextStyle(color: Colors.grey,fontSize:SC.from_height(16) )),
                          SizedBox(height: SC.from_height(5)),
                          Text('50,000',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(16) ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Platform',style: TextStyle(color: Colors.grey,fontSize:SC.from_height(16) )),
                          SizedBox(height: SC.from_height(5)),
                          Row(
                            children: [
                              Container(
                                width: SC.from_height(18),
                                height: SC.from_height(18),
                                child: Image.asset('assets/facebook.png'),
                              ),
                              SizedBox(width: SC.from_height(13)),
                              Container(
                                width: SC.from_height(18),
                                height: SC.from_height(18),
                                child: Image.asset('assets/add_images/insta.png'),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(height: SC.from_height(15)),
                // GFBUTTON //
                InkWell(
                  onTap: () {
                    // Your onTap logic here
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color.fromRGBO(36, 238, 221, 1)),

                    ),
                    margin: EdgeInsets.symmetric(horizontal: SC.from_height(12)),
                    height: SC.from_height(42), // Adjust as needed
                    width: SC.from_height(340), // Adjust as needed
                    child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Color.fromRGBO(36, 238, 221, 1),
                          fontSize: SC.from_height(14),
                        ), // Text color
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SC.from_height(20)),
              ],
            ),
          ),

          SizedBox(height: SC.from_height(18),),
          // GET WHATS APP MESSAGE //
          Container(
            margin: EdgeInsets.symmetric(horizontal:SC.from_height(15)),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300, // Shadow color
                  spreadRadius: 0.5, // Spread radius
                  blurRadius: 5, // Blur radius
                  offset: Offset(0, 1), // Offset in x and y direction
                ),
              ],

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(199, 255, 222, 1),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(SC.from_height(18)), // Adjust the radius value as needed
                      topLeft: Radius.circular(SC.from_height(8)), // Adjust the radius value as needed
                    ),
                  ),
                  height: SC.from_height(25),
                  child: Text('Recommendation',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(13) )),
                ),
                SizedBox(height: SC.from_height(8),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: SC.from_height(5)),
                  child: Row(
                    children: [
                      Text('Get WhatsApp Message', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: SC.from_height(17)),),
                      SizedBox(width: SC.from_height(5)),

                      Expanded(child: Container()),
                      Text('Duration : 30 days',style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
                SizedBox(height: SC.from_height(8),),
                Padding(
                  padding: EdgeInsets.only(
                    left: SC.from_height(10),
                    right: SC.from_height(10),
                    bottom: SC.from_height(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Lead',style: TextStyle(color: Colors.grey,fontSize:SC.from_height(16) )),
                          SizedBox(height: SC.from_height(5)),
                          Text('200',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(16) ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Reach',style: TextStyle(color: Colors.grey,fontSize:SC.from_height(16) )),
                          SizedBox(height: SC.from_height(5)),
                          Text('50',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(16) ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Platform',style: TextStyle(color: Colors.grey,fontSize:SC.from_height(16) )),
                          SizedBox(height: SC.from_height(5)),
                          Row(
                            children: [
                              Container(
                                width: SC.from_height(18),
                                height: SC.from_height(18),
                                child: Image.asset('assets/facebook.png'),
                              ),
                              SizedBox(width: SC.from_height(13)),
                              Container(
                                width: SC.from_height(18),
                                height: SC.from_height(18),
                                child: Image.asset('assets/add_images/insta.png'),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(height: SC.from_height(15)),
                // GFBUTTON //
                InkWell(
                  onTap: () {
                    // Your onTap logic here
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color.fromRGBO(36, 238, 221, 1)),

                    ),
                    margin: EdgeInsets.symmetric(horizontal: SC.from_height(12)),
                    height: SC.from_height(42), // Adjust as needed
                    width: SC.from_height(340), // Adjust as needed
                    child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Color.fromRGBO(36, 238, 221, 1),
                          fontSize: SC.from_height(14),
                        ), // Text color
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SC.from_height(20)),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
