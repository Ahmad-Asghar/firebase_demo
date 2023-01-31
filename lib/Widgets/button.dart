import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Roundbutton extends StatelessWidget {
  final Color colour;
  final String title;
  final VoidCallback onTap;

  const Roundbutton(
      {Key? key,

        required this.title, required this.onTap, required this.colour,

      }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 7.w),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 55,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: colour,
                ),

             child:   Align(
                 alignment: Alignment.center,
                 child: Text(title,
                 style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 2.4.h,
                 ),

                 )),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
