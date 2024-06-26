import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:go_router/go_router.dart';
import 'package:leadkart/login_pages/otp_screen.dart';

import '../helper/dimention.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});


  @override
  State<LoginScreen> createState() => _LogInPageState();
}

class _LogInPageState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        child: Column(

          children:[

            Container(
              width: double.infinity,
              height: SC.from_height(360),

              child: Image.asset('assets/2.png',fit: BoxFit.cover,),
            ),

            Container(
              width: double.infinity,
              height:SC.from_height(450) ,
              decoration: BoxDecoration(
                // border: Border.all(),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular( SC.from_height(30)), // Adjust the radius as needed
                  topRight: Radius.circular( SC.from_height(30)), // Adjust the radius as needed
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: Offset(0, 3), // Offset to create shadow towards bottom
                  ),
                ],
              ),
              child: Column(

                children: [

                  SizedBox(height: SC.from_height(30),),
                  Text('Let’s sign in ', style: TextStyle(fontSize:SC.from_height(24),fontWeight: FontWeight.w600 ),),
                  SizedBox(height: SC.from_height(10),),
                  Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 25),child: Text('Sign in your account using mobile no. or, Google \n                         Facebook and Mail ', style: TextStyle(fontSize:SC.from_height(15),color: Colors.grey),)),

                  SizedBox(height: SC.from_height(20),),

                  //  TEXTFIELD   PHONE NO.//
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    height: SC.from_height(45),
                    padding: EdgeInsets.symmetric(horizontal: SC.from_height(20)), // Optional padding to give some space around the TextField
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.grey,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      decoration: InputDecoration(
                        labelText: 'Enter moblie no',
                        labelStyle: TextStyle(color: Colors.grey),// Your label text
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2.0), // Custom border color
                        ),// Add this to make the TextField border more prominent
                      ),

                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     if (showEmptyNumberError) {
                      //       return 'Mobile No. can not be empty';
                      //     }
                      //   } else {
                      //     // Use regular expression to check if the input contains only numeric digits
                      //     final RegExp numericRegex = RegExp(r'^[0-9]+$');
                      //
                      //     if (!numericRegex.hasMatch(value)) {
                      //       return 'Please enter only numeric digits';
                      //     }
                      //
                      //     // Check for the exact length of 10
                      //     if (value.length != 10) {
                      //       return 'Please enter a valid 10-digit Mobile No.';
                      //     }
                      //   }
                      //   return null;
                      // },
                      // autovalidateMode: AutovalidateMode.onUserInteraction,

                    ),
                  ),

                  SizedBox(height: SC.from_height(20),),

                  // GFBUTTON //
                  Container(
                    height: SC.from_height(45), // Adjust as needed
                    width: SC.from_height(340), // Adjust as needed
                    child: GFButton(
                      onPressed: () {

                        context.pushNamed("homePage");
                        // Your onPressed logic here
                      },
                      color: Color.fromRGBO(36, 238, 221, 1), // The button's background color
                      borderShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                      ),
                      child: Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(color: Colors.white,fontSize: SC.from_height(14)), // Text color
                        ),
                      ),
                    ),
                  ),

                  // ROW //
                  SizedBox(height: SC.from_height(40),),

                  Padding(
                    padding:   EdgeInsets.symmetric(horizontal: SC.from_height(17)),
                    child: Row(
                      children: [

                        Container(width: SC.from_height(122),child: Divider(thickness: 1.5,)),

                        Text(' or Log with ',style: TextStyle(color: Colors.grey,fontSize: SC.from_height(16))),
                        Container(width: SC.from_height(122),child: Divider(thickness: 1.5,)),
                      ],
                    ),
                  ),

                  SizedBox(height: SC.from_height(30),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width:  SC.from_height(140),
                        height:  SC.from_height(54),
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Container(
                            width:  SC.from_height(41),
                            height:  SC.from_height(41),
                            child: Image.asset('assets/google.png',fit: BoxFit.cover,))),

                      ),
                      Container(
                        width:  SC.from_height(140),
                        height:  SC.from_height(54),
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Container(
                            width:  SC.from_height(32),
                            height:  SC.from_height(32),
                            child: Image.asset('assets/facebook.png',fit: BoxFit.cover,))),
                      ),
                    ],
                  )

                ],
              ),
            )

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
