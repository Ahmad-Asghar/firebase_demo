import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:ahmad_test/Views/inboxscreen.dart';
import 'package:ahmad_test/Views/previousmesseges.dart';
import 'package:ahmad_test/Views/profile.dart';
import 'package:ahmad_test/Widgets/bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';

import '../Models/persondetails.dart';
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  PersonDetails pdetaisl= Get.put(PersonDetails());
TextEditingController textController=TextEditingController();
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: AnimSearchBar(
          helpText: "Search",
          width: 70.w,
          textController: textController,
          onSuffixTap: () {
          }, onSubmitted: (String ) {  },
        ),
          // title: Text("Entries"),
          // centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          backgroundColor: Colors.brown[700],

actions: [
  IconButton(
        onPressed: (){
          Get.to(Profile());
        }, icon: Icon(Icons.person,)

  ),
],
        ),
       bottomNavigationBar: BottomAppBar(
         child: Container(
           height: 9.h,
           color: Colors.brown[100],
           child: Row(
             children: [
               Expanded(
                 flex: 3,
                 child: MaterialButton(
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
    bottomRight: Radius.circular(30),
  )
),

                   color: Colors.brown[700],
                   height: 7.h,
                   onPressed: (){
  Get.to(PreviousMesseges());
                   },
                   child: Icon(Icons.av_timer_sharp,color: Colors.white,),


                 ),
               ),

               Expanded(
  flex: 6,
  child:   FloatingActionButton(
    backgroundColor: Colors.brown[700],
    onPressed: (){
Bottomsheet();

    },
  child: Icon(Icons.add),
  ),
),

               Expanded(
                 flex: 3,
                 child: MaterialButton(
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(30),
                         bottomLeft: Radius.circular(30),
                       )
                   ),
                   color: Colors.brown[700],
                   height: 7.h,
                   onPressed: (){
                     Get.to(InboxScreen());
                   },
                   child: Icon(Icons.message,color: Colors.white,),


                 ),
               ),
             ],
           ),
         ),
       ),
        body: Container(
          color: Colors.brown[100],
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Obx(
              ()=> ListView.builder(
                      itemCount: pdetaisl.modellist.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding:  EdgeInsets.symmetric(vertical: 1.h,horizontal: 4.w),
                          child:
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            height: 20.h,
                            child: Column(

                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: 3.w,),
                                    CircleAvatar(
                                      radius:3.5.h,
                                      child: Icon(Icons.person),
                                    ),
                                    SizedBox(width: 5.w,),
                                    Text(pdetaisl.modellist[index].value.toString(),
                                    style: TextStyle(
                                      fontSize: 2.5.h,
                                      fontWeight: FontWeight.bold
                                    ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 3.w,),
                                    Expanded(
                                      child: Text(pdetaisl.modellist[index].description.toString(),
                                        style: TextStyle(
                                            fontSize: 2.h,

                                        ),
                                      ),
                                    )
                                  ],
                                )

                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
