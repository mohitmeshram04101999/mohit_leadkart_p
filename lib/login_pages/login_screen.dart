import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:go_router/go_router.dart';
import 'package:leadkart/helper/helper.dart';
import 'package:leadkart/login_pages/otp_screen.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:leadkart/my%20custom%20assets%20dart%20file/my_math.dart';
import 'package:leadkart/my%20custom%20assets%20dart%20file/myast%20dart%20file.dart';
import '../helper/dimention.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});


  @override
  State<LoginScreen> createState() => _LogInPageState();
}

class _LogInPageState extends State<LoginScreen> {
  loginWithFacebook() async {
    final LoginResult result = await FacebookAuth.i.login(
      loginBehavior: LoginBehavior.webOnly,
      loginTracking: LoginTracking.enabled,
      permissions: ['email', 'public_profile'],
    ); // by default we request the email and the public profile
// or FacebookAuth.i.login()
    if (result.status == LoginStatus.success) {
      // you are logged
      final AccessToken accessToken = result.accessToken!;
      log('Access Token: ${accessToken.tokenString}');
    } else {
      log('Error');
log(result.status.toString());
log(result.message.toString());
    }
  }
  double value = 0.0;
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

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: SC.from_height(45),
                    padding: EdgeInsets.symmetric(horizontal: SC.from_height(20)), // Optional padding to give some space around the TextField
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.grey,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      decoration: InputDecoration(
                        labelText: 'Enter mobile no',
                        labelStyle: TextStyle(color: Colors.grey), // Your label text
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey, width: 1.0), // Set default border color
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey, width: 1.0), // Set enabled border color
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey, width: 0.5), // Custom border color for focused state
                        ),
                      ),
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
                      color: MyHelper.appConstent.primeryColor, // The button's background color
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

                        Container(width: SC.from_height(122),child: Divider(thickness: 1.5,color: Colors.grey.shade300,)),

                        Text(' or Log with ',style: TextStyle(color: Colors.grey,fontSize: SC.from_height(16))),
                        Container(width: SC.from_height(122),child: Divider(thickness: 1.5,color: Colors.grey.shade300)),
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
                      InkWell(
                        onTap: () async{
await loginWithFacebook();
                        },
                        child: Container(
                          width:  SC.from_height(140),
                          height:  SC.from_height(54),
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),
                          child: Center(child: Container(
                              width:  SC.from_height(32),
                              height:  SC.from_height(32),
                              child: Image.asset('assets/facebook.png',fit: BoxFit.cover,))),
                        ),
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
