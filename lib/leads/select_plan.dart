import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:leadkart/helper/dimention.dart';
import 'package:leadkart/helper/helper.dart';
import 'package:leadkart/screens/leads/getNewLeads.dart';

class SelectPlan extends StatefulWidget {
  const SelectPlan({Key? key}) : super(key: key);

  @override
  State<SelectPlan> createState() => _SelectPlanState();
}

class _SelectPlanState extends State<SelectPlan> {

  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: MyHelper.appConstent.primeryColor,
        title: Text('Select a Plan',style: TextStyle(fontSize: SC.from_height(21)),),
        actions: [
          HelpButton(),
          SizedBox(width: SC.from_height(21),)
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: SC.from_height(18)),
        children: [
          SizedBox(height: SC.from_height(15),),

          // RECOMMENDATION //
          Column(
            children: List.generate(5, (index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 0.8,
                      blurRadius: 7,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (index == 0) // Only show this container for the first item
                      // Recomedation container //
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(199, 255, 222, 0.8),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(SC.from_height(18)),
                            topLeft: Radius.circular(SC.from_height(8)),
                          ),
                        ),
                        height: SC.from_height(28),
                        width: SC.from_height(120),
                        child: Center(
                          child: Text(
                            'Recommendation',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: SC.from_height(14),
                            ),
                          ),
                        ),
                      ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: SC.from_height(10)),
                      child: Row(
                        children: [
                          Text(
                            'Duration : 30 days',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                              fontSize: SC.from_height(13),
                            ),
                          ),
                          SizedBox(width: SC.from_height(10)),
                          Text(
                            '₹ 2000',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                              fontSize: SC.from_height(20),
                            ),
                          ),
                          Expanded(child: Container()),
                          Radio(
                            value: index,
                            groupValue: selectedValue,
                            onChanged: (int? value) {
                              setState(() {
                                selectedValue = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: SC.from_height(8)),
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
                              Text(
                                'Lead',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: SC.from_height(17),
                                ),
                              ),
                              SizedBox(height: SC.from_height(5)),
                              Text(
                                '200',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: SC.from_height(17),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Reach',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: SC.from_height(17),
                                ),
                              ),
                              SizedBox(height: SC.from_height(5)),
                              Text(
                                '50,000',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: SC.from_height(17),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Platform',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: SC.from_height(17),
                                ),
                              ),
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
                          Column(
                            children: [
                              Text(
                                'AI Images',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: SC.from_height(17),
                                ),
                              ),
                              SizedBox(height: SC.from_height(5)),
                              Text(
                                '5',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: SC.from_height(17),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: SC.from_height(5)),


                  ],
                ),
              );
            }),
          ),

          SizedBox(height: SC.from_height(20),),
          // GFBUTTON //
          Container(
            height: SC.from_height(45), // Adjust as needed
            width: SC.from_height(340), // Adjust as needed
            child: GFButton(
              onPressed: () {

                // Navigator.push(context, MaterialPageRoute(builder: (context)=> BusinesCategory()));
                // Your onPressed logic here
              },
              color: Color.fromRGBO(36, 238, 221, 1), // The button's background color
              borderShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
              ),
              child: Center(
                child: Text(
                  'Proceed to Payment',
                  style: TextStyle(color: Colors.white,fontSize: SC.from_height(18)), // Text color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
