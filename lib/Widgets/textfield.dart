import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Textfield extends StatelessWidget {
  //final Color colour;
  final TextEditingController controller;
  final String title;
 // final  bool loading;
  const Textfield(
      {Key? key,
        required this.controller,
        required this.title,
        //required this.colour,
        //this.loading=false,
      }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 2.h,horizontal: 7.w),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            height: 8.5.h,

            child: Center(
              child: Padding(
                padding:  EdgeInsets.only(left: 5.w),
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 2.7.h,
                    fontWeight: FontWeight.bold
                  ),
                  hintText: title
                  ),
                ),
              ),
            ),
          ),
        );
  }
}
