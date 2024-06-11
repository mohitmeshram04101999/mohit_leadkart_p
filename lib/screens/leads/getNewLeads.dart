import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:leadkart/helper/helper.dart';
import 'package:leadkart/them/constents.dart';

import '../../helper/dimention.dart';

class GetNewLeads extends StatelessWidget {
  const GetNewLeads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyHelper.appConstent.primeryColor,
        foregroundColor: Colors.white,
        title: const Text('Get New Leads'),
        actions: [const HelpButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const InfoCard(
                    title: 'Get new customers using Leads :',
                    subTitle:
                        ' Generate daily new leads by showing your ads to potential customers in target area.',
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Total Budget",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SC.from_height(10),
                  ),
                  Row(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      BudgetSelecter(
                        icon: 'assets/facebook_wbg.png',
                        budget:'2000',
                      ),

                    ],
                  ),
              SizedBox(
                    height: SC.from_height(10),
                  ),
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      BudgetSelecter(
                        icon: 'assets/instagram_wbg.png',
                        budget:'2000',
                      ),
                    ],
                  ),
              SizedBox(
                    height: SC.from_height(10),
                  ),
                  Text("OR"),
                  SizedBox(
                    height: SC.from_height(10),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Select a Package",style: Theme.of(context).textTheme.displayMedium,),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SC.from_height(10),
                  ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: LeadSelecter(),
                ),)
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: SC.Screen_width,
                // height: SC.from_height(50),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0),
                      Colors.white.withOpacity(0.5),
                      Colors.grey.withOpacity(0.5),
                      Colors.grey,
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      context.pushNamed('imageEditor');
                    },
                    child: Text('Next'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class LeadSelecter extends StatefulWidget {
  const LeadSelecter({super.key});

  @override
  State<LeadSelecter> createState() => _LeadSelecterState();
}

class _LeadSelecterState extends State<LeadSelecter> {
  @override
  Widget build(BuildContext context) {
    return             Container(

      margin: EdgeInsets.symmetric(horizontal:SC.from_height(8)),
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
            padding: EdgeInsets.symmetric(horizontal: SC.from_width(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text('Get New leads', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: SC.from_height(17)),),
                    SizedBox(width: SC.from_height(5)),

                    // Expanded(child: Container()),
                    Text('Duration : 30 days',style: TextStyle(color: Colors.black.withOpacity(0.8)),)
                  ],
                ),
                Radio(value: true, groupValue: true, onChanged: (value){})
              ],
            ),
          ),
          SizedBox(height: SC.from_height(8),),
          Padding(
            padding: EdgeInsets.only(
              left: SC.from_height(10),
              right: SC.from_height(100),
              bottom: SC.from_height(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Lead',style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize:SC.from_height(16) )),
                    SizedBox(height: SC.from_height(5)),
                    Text('200',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(16) ),),
                  ],
                ),
                Column(
                  children: [
                    Text('Reach',style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize:SC.from_height(16) )),
                    SizedBox(height: SC.from_height(5)),
                    Text('>50,000',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:SC.from_height(16) ),),
                  ],
                ),
                Column(
                  children: [
                    Text('Platform',style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize:SC.from_height(16) )),
                    SizedBox(height: SC.from_height(5)),
                    Row(
                      children: [
                        Container(
                          width: SC.from_height(25),
                          height: SC.from_height(25),
                          child: Image.asset('assets/instagram_wbg.png'),
                        ),
                        SizedBox(width: SC.from_height(13)),
                        Container(
                          width: SC.from_height(25),
                          height: SC.from_height(25),
                          child: Image.asset('assets/facebook_wbg.png'),
                        ),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
          // SizedBox(height: SC.from_height(15)),
          // GFBUTTON //
          // InkWell(
          //   onTap: () {
          //     // Your onTap logic here
          //   },
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(10),
          //       border: Border.all(color: Color.fromRGBO(36, 238, 221, 1)),
          //
          //     ),
          //     margin: EdgeInsets.symmetric(horizontal: SC.from_height(12)),
          //     height: SC.from_height(42), // Adjust as needed
          //     width: SC.from_height(340), // Adjust as needed
          //     child: Center(
          //       child: Text(
          //         'Continue',
          //         style: TextStyle(
          //           color: Color.fromRGBO(36, 238, 221, 1),
          //           fontSize: SC.from_height(14),
          //         ), // Text color
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(height: SC.from_height(20)),
        ],
      ),
    );
  }
}

class BudgetSelecter extends StatefulWidget {
   String icon;
   String budget;
   BudgetSelecter({super.key, required this.icon, required this.budget});

  @override
  State<BudgetSelecter> createState() => _BudgetSelecterState();
}

class _BudgetSelecterState extends State<BudgetSelecter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        border: Border.all(color:Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: 0, vertical: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              decoration:  BoxDecoration(
                  border: Border(
                      right: BorderSide(color: Colors.grey))),
              padding: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 10),
              child: Image.asset(
                widget.icon,
                height: SC.from_height(20),
              )),
           Expanded(child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(widget.budget,style: Theme.of(context).textTheme.displaySmall,),
           )),
          Container(
            height: SC.from_height(27),
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)),
            padding: const EdgeInsets.symmetric(
                horizontal: 0, vertical: 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: (){
setState(() {
  widget.budget= (int.parse(widget.budget)-1).toString();
});
                  },
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
                      child: Image.asset(
                        'assets/minus.png',
                        width: SC.from_height(15),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.budget= (int.parse(widget.budget)+1).toString();
                    });
                  },
                  child: Container(
                    decoration:  BoxDecoration(
                      // color: Theme.of(context).iconTheme.color,
                        border: Border(
                            left: BorderSide(color: Colors.grey))),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Center(
                          child: Image.asset(
                            'assets/add.png',
                            width: SC.from_height(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


class InfoCard extends StatelessWidget {
  final String title;
  final String subTitle;
  const InfoCard({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: MyHelper.appConstent.infoContainerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(
            horizontal: SC.from_width(10), vertical: SC.from_height(10)),
        margin: EdgeInsets.symmetric(vertical: SC.from_height(10)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.info_outline_rounded, color: Colors.black,),
            SizedBox(
              width: SC.from_width(10),
            ),
            SizedBox(
              width: SC.Screen_width * 0.82,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: title,
                    style: Theme.of(context).textTheme.displayMedium),
                TextSpan(
                    text: subTitle,
                    style: Theme.of(context).textTheme.displaySmall),
              ])),
            ),
          ],
        ),
      ),
    );
  }
}

class HelpButton extends StatelessWidget {
  const HelpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SC.from_height(30),
      width: SC.from_width(90),
      child: OutlinedButton(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.call),
            SizedBox(
              width: SC.from_width(5),
            ),
            Text(
              'Help?',
              style: MyHelper.textStyls.leadTileWhiteText,
            ),
          ],
        ),
        onPressed: () {},
        style: ButtonStyle(
          padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
          backgroundColor:
              MaterialStatePropertyAll(MyHelper.appConstent.primeryColor),
          foregroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.white),
          fixedSize: const MaterialStatePropertyAll(Size(120, 25)),
          side: const MaterialStatePropertyAll(BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
