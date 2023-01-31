import 'package:ahmad_test/Views/homescreen.dart';
import 'package:ahmad_test/Views/signuppage.dart';
import 'package:ahmad_test/Views/updatepassword.dart';
import 'package:ahmad_test/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Widgets/textfield.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailcontroller=TextEditingController();
    final passwordcontroller =TextEditingController();
    return SafeArea(
      child: Scaffold(
body: Container(
  height: double.infinity,
  width: double.infinity,
 decoration: BoxDecoration(
   image: DecorationImage(
       image: AssetImage("images/background.jpeg"),
       opacity: 0.3,
       fit: BoxFit.cover
   )
 ),
  child: SingleChildScrollView(
    child: Column(
      children: [
        Container(
          height: 35.h,

child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image(image: AssetImage("images/logo.png"))
    ],
),
        ),
        Container(
          height: 35.h,

child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Textfield(title: 'E-mail',controller: emailcontroller,),
      Textfield(title: 'Password',controller: passwordcontroller,),

      Padding(
        padding:  EdgeInsets.only(left: 6.w),
        child: TextButton(onPressed: (){
          Get.to(UpdatePassword());
        }, child: Text("Forgot Password?",
        style: TextStyle(
        color: Colors.blue
        ),
        ),

        ),
      )
    ],
),
        ),
        Container(
          height: 26.1.h,

child: Column(
    children: [
     Roundbutton(title: 'Login', onTap: (){
       Get.to(HomeScreen());
     }, colour: Colors.brown.shade700),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Don't have an account?",
        style: TextStyle(
        ),
        ),
        TextButton(onPressed: (){
        Get.to(Signup());
        }, child: Text("Sign Up",
          style: TextStyle(
              color: Colors.blue
          ),
        ),

        ),
        ],
      )
    ],
),
        ),

      ],
    ),
  ),
),
      ),
    );
  }
}
