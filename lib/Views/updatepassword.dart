import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../Widgets/button.dart';
import '../Widgets/textfield.dart';
class UpdatePassword extends StatelessWidget {
   UpdatePassword({Key? key}) : super(key: key);

TextEditingController emailcontroller=TextEditingController();
   TextEditingController passwordcontroller=TextEditingController();
   TextEditingController confirmpasswordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Password'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.brown[100],
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h,),
            Padding(
              padding:  EdgeInsets.only(left: 8.w),
              child: Text("Enter your E-mail",
              style: TextStyle(
                fontSize: 2.5.h,
              ),
              ),
            ),
            Textfield(title: 'E-mail',controller: emailcontroller,),
            Padding(
              padding:  EdgeInsets.only(left: 8.w),
              child: Text("Enter password",
                style: TextStyle(
                  fontSize: 2.5.h,
                ),
              ),
            ),
            Textfield(title: 'Password',controller: passwordcontroller,),
            Padding(
              padding:  EdgeInsets.only(left: 8.w),
              child: Text("Confirm Password",
                style: TextStyle(
                  fontSize: 2.5.h,
                ),
              ),
            ),
            Textfield(title: 'Confirm Password',controller: confirmpasswordcontroller,),
            Roundbutton(title: 'Submit', onTap: (){}, colour: Colors.brown.shade700)
          ],
        ),
      ),
    );
  }
}
