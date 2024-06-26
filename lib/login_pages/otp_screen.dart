import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:leadkart/component/bottom_navigation_screen.dart';
import 'package:leadkart/helper/dimention.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          // decoration: BoxDecoration(border: Border.all()),
            width: SC.from_height(270),child: Center(child: Text('Verify OTP',style: TextStyle(fontWeight: FontWeight.w600),))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: SC.from_height(30),),
            Container(
              width: double.infinity,
              height: SC.from_height(160),

              child: Image.asset('assets/otp.png',fit: BoxFit.contain,),
            ),

            SizedBox(height: SC.from_height(30),),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: SC.from_height(15), color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'We have sent you a 4 digit code to verify your\n            phone number on ',
                    ),
                    TextSpan(
                      text: '9988090679',
                      style: TextStyle(color: Color.fromRGBO(36, 238, 221, 1)), // Change color of the phone number
                    ),
                  ],
                ),
              ),
            ),


            SizedBox(height: SC.from_height(50),),
            // TEXT FIELD  otp//
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(SC.from_width(9))),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(SC.from_width(10)),
                      border: Border.all(color: Colors.grey.shade200), // Adding border color
                    ),
                    width: SC.from_width(60),
                    height: SC.from_width(60),
                    alignment: Alignment.center,

                    child: TextField(
                      cursorColor: Colors.grey,
                      // controller: _otpApi.otpController1.value,

                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        } else if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                          hintText: "",
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.circular(SC.from_width(9)),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(36, 238, 221, 1),
                              )),

                          border: InputBorder.none),

                    ),
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(SC.from_width(9))),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(SC.from_width(10)),
                      border: Border.all(color: Colors.grey.shade200), // Adding border color
                    ),
                    width: SC.from_width(60),
                    height: SC.from_width(60),
                    alignment: Alignment.center,
                    child: TextField(
                      cursorColor: Colors.grey,
                      // controller: _otpApi.otpController2.value,
                      focusNode: focusNode2,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        } else if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                          hintText: "",
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.circular(SC.from_width(9)),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(36, 238, 221, 1),
                              )
                          ),
                          border: InputBorder.none),

                    ),
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(SC.from_width(9))),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(SC.from_width(10)),
                      border: Border.all(color: Colors.grey.shade200), // Adding border color
                    ),
                    width: SC.from_width(60),
                    height: SC.from_width(60),
                    alignment: Alignment.center,
                    child: TextField(
                      cursorColor: Colors.grey,
                      // controller: _otpApi.otpController3.value,
                      focusNode: focusNode3,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        } else if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                          hintText: "",
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.circular(SC.from_width(9)),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(36, 238, 221, 1),
                              )
                          ),
                          border: InputBorder.none),

                    ),
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(SC.from_width(9))),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(SC.from_width(10)),
                      border: Border.all(color: Colors.grey.shade200), // Adding border color
                    ),
                    width: SC.from_width(60),
                    height: SC.from_width(60),
                    alignment: Alignment.center,
                    child: TextField(
                      cursorColor: Colors.grey,
                      // controller: _otpApi.otpController4.value,
                      focusNode: focusNode4,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        } else if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                          hintText: "",

                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.circular(SC.from_width(9)),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(36, 238, 221, 1),
                              )
                          ),
                          border: InputBorder.none),

                    ),
                  ),
                ],
              ),
            ),


            SizedBox(height: SC.from_height(40),),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: SC.from_height(20)),
              child: Row(
                children: [
                  Text('Please wait 00:30s',style: TextStyle(fontSize: SC.from_height(15),color: Colors.grey),),
                  Expanded(child: Container()),
                  Text('Resend OTP',style: TextStyle(fontSize: SC.from_height(15),color: Colors.grey)),
                ],
              ),
            ),

            SizedBox(height: SC.from_height(40),),
            // GFBUTTON //
            Container(
              height: SC.from_height(45), // Adjust as needed
              width: SC.from_height(340), // Adjust as needed
              child: GFButton(
                onPressed: () {

                  Get.off(MyBottomNavigationBar());
                  // Your onPressed logic here
                },
                color: Color.fromRGBO(36, 238, 221, 1), // The button's background color
                borderShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                ),
                child: Center(
                  child: Text(
                    'Verify OTP',
                    style: TextStyle(color: Colors.white,fontSize: SC.from_height(16)), // Text color
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
