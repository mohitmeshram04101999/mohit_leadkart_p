import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:leadkart/helper/dimention.dart';
import 'package:leadkart/helper/helper.dart';
import 'package:leadkart/leads/select_plan.dart';

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
            dropdownColor: Color.fromRGBO(36, 238, 221, 0.6),
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
                  style: TextStyle(color: Colors.white, fontSize: SC.from_height(19.5)),
                ),
              );
            }).toList(),
          ),

          SizedBox(width: SC.from_height(80)),

    Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.call_outlined,size:  SC.from_height(17),color: Colors.white,),
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
      // backgroundColor: Colors.white,
      // appBar:  AppBar(
      //   leading: SizedBox(),
      //   leadingWidth: 0,
      //
      //   title: Container(
      //     clipBehavior: Clip.hardEdge,
      //     width: SC.from_height(30),
      //     height: SC.from_height(30),
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //     child: Image.asset(
      //       'assets/home_images/img.png',
      //     ),
      //   ),
      //   actions: [
      //     DropdownButton<String>(
      //       hint: Text(
      //         " SK e solution  ",
      //         style: TextStyle(color: Colors.white, fontSize: SC.from_height(18)),
      //       ),
      //       value: dropdownValue,
      //       icon: Transform.rotate(
      //         angle: 1.5708, // 90 degrees in radians (π/2 or 1.5708 radians)
      //         child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,size: SC.from_height(17)),
      //       ),
      //       iconSize: SC.from_height(22),
      //       elevation: 16,
      //       style: TextStyle(color: Colors.black),
      //       underline: Container(), // Remove the underline
      //       onChanged: (String? newValue) {
      //         setState(() {
      //           dropdownValue = newValue;
      //           // Handle the selected option here
      //           print('Selected: $dropdownValue');
      //         });
      //       },
      //       items: <String>['SK e solution 1 ', 'SK e solution 2 ', 'SK e solution 3 ']
      //           .map<DropdownMenuItem<String>>((String value) {
      //         return DropdownMenuItem<String>(
      //           value: value,
      //           child: Text(
      //             value,
      //             style: TextStyle(color: Colors.white, fontSize: SC.from_height(18)),
      //           ),
      //         );
      //       }).toList(),
      //     ),
      //
      //     SizedBox(width: SC.from_height(60)),
      //
      //     Container(
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(Icons.call_outlined,size:  SC.from_height(17),),
      //           SizedBox(width: SC.from_height(4),),
      //           Center(child: Text('Help ?',style: TextStyle(fontSize: SC.from_height(16),color: Colors.white),),),
      //         ],
      //       ),
      //       width: SC.from_height(85),
      //       height: SC.from_height(30),
      //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(SC.from_height(15)),border: Border.all(
      //           color: Colors.white
      //       )),
      //     ),
      //     SizedBox(width: SC.from_height(20)),
      //   ],
      // ),
      body: Padding(
        padding:   EdgeInsets.symmetric(horizontal:SC.from_height(19) ),
        child: ListView(
          children: [

            SizedBox(height: SC.from_height(15),),

            Text('How ads report will look',style: TextStyle(fontSize: SC.from_height(17),fontWeight: FontWeight.w600),),
            SizedBox(height: SC.from_height(7),),
            Text('You can see your ad performance in real time',style: TextStyle(fontSize: SC.from_height(15),color: Colors.grey.shade500,fontWeight: FontWeight.w500),),

            SizedBox(height: SC.from_height(20),),

            // DEMO ADD //
            Container(
              margin: EdgeInsets.symmetric(horizontal:SC.from_height(2)),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300, // Shadow color
                    spreadRadius: 0.2, // Spread radius
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
                        padding:   EdgeInsets.only(left: SC.from_height(10),top: SC.from_height(10)),
                        child: Text('01 May to 10 May, 2023 ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: SC.from_height(14.5)),),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: SC.from_height(8)),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(233, 233, 233, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(SC.from_height(12)), // Adjust the radius value as needed
                            bottomLeft: Radius.circular(SC.from_height(15)), // Adjust the radius value as needed
                          ),
                        ),
                        height: SC.from_height(28),
                        width: SC.from_height(70),
                        child: Center(child: Text('Demo Ad',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize:SC.from_height(14) ))),
                      ),
                    ],
                  ),
                  SizedBox(height: SC.from_height(4),),

                  //GET NEW LEADS  '//
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: SC.from_height(10)),
                    child: Row(
                      children: [
                        Text('Get New leads', style: TextStyle(color:MyHelper.appConstent.primeryColor,fontWeight: FontWeight.w600,fontSize: SC.from_height(16)),),
                        SizedBox(width: SC.from_height(10)),

                        SizedBox(width: SC.from_height(48)),
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
                  SizedBox(height: SC.from_height(12),),
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
                                SizedBox(width: SC.from_height(8)),
                                Text('180', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(16) ),),
                                SizedBox(width: SC.from_height(10)),
                                Text('Leads',style: TextStyle(color: Colors.grey,fontSize:SC.from_height(15) )),
                              ],
                            ),
                            SizedBox(height: SC.from_height(8),),

                            Row(
                              children: [
                                SizedBox(width: SC.from_height(8)),
                                Text('456', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(16) ),),
                                SizedBox(width: SC.from_height(10)),
                                Text('Spent',style: TextStyle(color: Colors.grey,fontSize:SC.from_height(15) )),
                              ],
                            ),
                            SizedBox(height: SC.from_height(8),),
                            Row(
                              children: [
                                SizedBox(width: SC.from_height(8)),
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


                  // VIEW REPORTS //
                  Padding(
                    padding:  EdgeInsets.only(right: SC.from_height(12)),
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
                        Container(height: SC.from_height(1),width: SC.from_height(85),child: Divider(thickness: 1,color: MyHelper.appConstent.primeryColor,)),
                      ],
                    ),
                  ),

                  SizedBox(height: SC.from_height(20)),
                ],
              ),
            ),

            SizedBox(height: SC.from_height(20),),

            Row(
              children: [
                Text('Select a Package',style: TextStyle(fontSize: SC.from_height(18),fontWeight: FontWeight.w500),),
                Spacer(),
                Text('See More',style: TextStyle(color: MyHelper.appConstent.primeryColor,fontSize: SC.from_height(17),fontWeight: FontWeight.w600),),
              ],
            ),

            SizedBox(height: SC.from_height(15),),

            // RECOMMENDATION //
            Container(
              margin: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300, // Shadow color
                    spreadRadius: 0.8, // Spread radius
                    blurRadius: 7, // Blur radius
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
                      color: Color.fromRGBO(199, 255, 222, 0.8),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(SC.from_height(18)), // Adjust the radius value as needed
                        topLeft: Radius.circular(SC.from_height(8)), // Adjust the radius value as needed
                      ),
                    ),
                    height: SC.from_height(28),
                    width: SC.from_height(120),
                    child: Center(child: Text('Recommendation',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(14) ))),
                  ),
                  SizedBox(height: SC.from_height(8),),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: SC.from_height(10)),
                    child: Row(
                      children: [
                        Text('Get New leads', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: SC.from_height(18)),),
                        SizedBox(width: SC.from_height(5)),

                        Expanded(child: Container()),
                        Text('Duration : 30 days',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black54,fontSize: SC.from_height(13)),)
                      ],
                    ),
                  ),
                  SizedBox(height: SC.from_height(8),),
                  Padding(
                    padding: EdgeInsets.only(
                      left: SC.from_height(14),
                      right: SC.from_height(14),
                      bottom: SC.from_height(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('Lead',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black54,fontSize:SC.from_height(17) )),
                            SizedBox(height: SC.from_height(5)),
                            Text('200',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(17) ),),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Reach',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black54,fontSize:SC.from_height(17) )),
                            SizedBox(height: SC.from_height(5)),
                            Text('50,000',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(17) ),),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Platform',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black54,fontSize:SC.from_height(17) )),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectPlan()));
                      // Your onTap logic here
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: MyHelper.appConstent.primeryColor),

                      ),
                      margin: EdgeInsets.symmetric(horizontal: SC.from_height(12)),
                      height: SC.from_height(42), // Adjust as needed
                      width: SC.from_height(340), // Adjust as needed
                      child: Center(
                        child: Text(
                          'Choose Package',
                          style: TextStyle(
                             color: MyHelper.appConstent.primeryColor,
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
              margin: EdgeInsets.symmetric(horizontal: 2),
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
                      color: Color.fromRGBO(199, 255, 222, 0.8),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(SC.from_height(18)), // Adjust the radius value as needed
                        topLeft: Radius.circular(SC.from_height(8)), // Adjust the radius value as needed
                      ),
                    ),
                    height: SC.from_height(28),
                    width: SC.from_height(120),
                    child: Center(child: Text('Recommendation',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(14) ))),
                  ),
                  SizedBox(height: SC.from_height(8),),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: SC.from_height(5)),
                    child: Row(
                      children: [
                        Text('Get WhatsApp Message', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: SC.from_height(18)),),
                        SizedBox(width: SC.from_height(5)),

                        Expanded(child: Container()),
                        Text('Duration : 30 days',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black54,fontSize: SC.from_height(13)),)
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
                            Text('Lead',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black54,fontSize:SC.from_height(17) )),
                            SizedBox(height: SC.from_height(5)),
                            Text('200',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(17) ),),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Reach',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black54,fontSize:SC.from_height(17) )),
                            SizedBox(height: SC.from_height(5)),
                            Text('50',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(17) ),),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Platform',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black54,fontSize:SC.from_height(17) )),
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
                        border: Border.all(color:MyHelper.appConstent.primeryColor),

                      ),
                      margin: EdgeInsets.symmetric(horizontal: SC.from_height(12)),
                      height: SC.from_height(42), // Adjust as needed
                      width: SC.from_height(340), // Adjust as needed
                      child: Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            color:MyHelper.appConstent.primeryColor,
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

          ],
        ),
      ),
    );
  }
}
