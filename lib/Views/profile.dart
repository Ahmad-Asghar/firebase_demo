import 'dart:io';

import 'package:ahmad_test/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/getprofile.dart';
import '../Widgets/textfield.dart';

class Profile extends StatelessWidget {
   Profile({Key? key}) : super(key: key);

TextEditingController namecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  Getprofile get=Getprofile();
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.brown[50],
          height: double.infinity,
          width: double.infinity,
child: Column(
  children: [
    Container(
     height: 44.25.h,
      child: InkWell(
        onTap: (){
          get.getimage();
        },
        child:
        GetBuilder<Getprofile>(
          init: get,
          builder: (controller)=>
          get.imageFile!=null?CircleAvatar(
            radius: 15.h,
            backgroundImage:  FileImage(
              get.imageFile,
            ),

          ) :
          CircleAvatar(
              radius: 15.h,
              backgroundColor: Colors.white,
              child:  Icon(Icons.person_add_alt,
                size: 15.h,
              )
          ),

          ),
        ),
      ),
    Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Textfield(title: 'Name',controller: namecontroller,),
          Textfield(title: 'E-mail',controller: emailcontroller,),
          Padding(
            padding:  EdgeInsets.only(left: 5.w),
            child: TextButton(onPressed: (){}, child: Text("Change Password",
            style: TextStyle(
              color: Colors.blue
            ),
            ),),
          ),
          Roundbutton(title: 'Logout', onTap: (){}, colour: Colors.brown.shade700)
        ],
      ),
      height:44.25.h,


    )
  ],
),
        ),
      ),
    );
  }
}
