import 'package:ahmad_test/Views/loginpage.dart';
import 'package:ahmad_test/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Widgets/textfield.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailcontroller=TextEditingController();
    final passwordcontroller =TextEditingController();
    final confirmpasswordcontroller =TextEditingController();

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
                  height: 40.h,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Textfield(title: 'E-mail',controller: emailcontroller,),
                      Textfield(title: 'Password',controller: passwordcontroller,),
                      Textfield(title: 'Password',controller: confirmpasswordcontroller,),
                    ],
                  ),
                ),
                Container(
                  height: 21.1.h,

                  child: Column(
                    children: [
                      Roundbutton(title: 'Sign Up', onTap: (){}, colour: Colors.brown.shade700),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",
                            style: TextStyle(
                            ),
                          ),
                          TextButton(onPressed: (){
                            Get.to(Login());
                          }, child: Text("Login",
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
