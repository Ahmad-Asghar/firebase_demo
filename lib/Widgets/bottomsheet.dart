


import 'package:ahmad_test/Views/homescreen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Controller/addinfo.dart';




void Bottomsheet(){
  AddInfo addinfo=Get.put(AddInfo());
  TextEditingController namecontroller=TextEditingController();
  TextEditingController descriptioncontroller=TextEditingController();
  Get.bottomSheet(
      Container(
        color: Colors.brown[900],
        height: 70.h,
        child: SingleChildScrollView(
          child: Column(
children: [
  Padding(
    padding:  EdgeInsets.all(2.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

          InkWell(
            onTap:(){
          addinfo.addNameDescription(namecontroller.text, descriptioncontroller.text);
         // Navigator.pop(context);
              Get.back();

        },
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.send,color: Colors.brown,
              ),
            ),
          ),
          InkWell(
            onTap: (){
             namecontroller.clear();
             descriptioncontroller.clear();
             Get.back();
            },
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.cancel_outlined,color: Colors.brown,
              ),
            ),
          ),
      ],
    ),
  ),
  Padding(
    padding:  EdgeInsets.all(2.0.h),
    child: TextFormField(
      controller: namecontroller,
      maxLines: 2,
      decoration:InputDecoration(
          filled: true,
          fillColor: Colors.grey,
          hintText: "Enter Name",
          border: OutlineInputBorder(

          ),

      ),
    ),
  ),
  Padding(
    padding:  EdgeInsets.all(2.0.h),
    child: TextFormField(

      controller: descriptioncontroller,
      maxLines: 5,
      decoration:InputDecoration(
          filled: true,
          fillColor: Colors.grey,
          hintText: "Description",
          border: OutlineInputBorder(

          ),

      ),
    ),
  ),
],
          ),
        ),

  ));
}