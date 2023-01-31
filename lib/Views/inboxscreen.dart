import 'package:ahmad_test/Controller/addinmesseges.dart';
import 'package:ahmad_test/Models/inboxmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Widgets/button.dart';
import '../Widgets/textfield.dart';
class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController newusercontroller=TextEditingController();
   InboxModel inbox=Get.put(InboxModel());
   AddMessege addmesege=Get.put(AddMessege());
   void Bottomsheet(){
     Get.bottomSheet(
         Container(
       height: 30.h,
       color:Colors.brown[300],
       child: Column(
         children: [
Text(
  "Add New Person",
style: TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 3.h,
),
),
           Textfield(controller: newusercontroller, title: 'Add+'),
        Roundbutton(title: "Add", onTap: (){
          addmesege.addMessege(newusercontroller.text.toString());
          newusercontroller.clear();
          Get.back();
        }, colour: Colors.brown.shade700),
         ],
       ),
     ));
   }
    return SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Bottomsheet();
            },
            child: Icon(Icons.add),
          ),
          appBar: AppBar(
            title: Text("Inbox"),
            centerTitle: true,
          ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Obx(
                    ()=> ListView.builder(
                    itemCount: inbox.persons.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding:  EdgeInsets.symmetric(vertical: 1.h,horizontal: 4.w),
                        child:
                        Container(
                          color: Colors.brown[200],
                          child: ListTile(
                            title: Text(inbox.persons[index].toString()),
                            leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.person)),
                            subtitle: Text('How are you?'),
                          ),
                        )
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
