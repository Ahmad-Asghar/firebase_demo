import 'package:ahmad_test/Models/previous.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PreviousMesseges extends StatelessWidget {
   PreviousMesseges({Key? key}) : super(key: key);

  Previous pre=Get.put(Previous());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previous Messeges'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Divider(height: 1.h,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: pre.previousmesseges.length,
                  itemBuilder: (BuildContext context, int index) {
                    return
                      Column(
                        children: [
                          Container(
                            color: Colors.brown[200],
                            child: ListTile(
                              title: Text(pre.previousmesseges[index].toString()),
                              leading: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.person)),
                              trailing: Text("21h"),
                            ),
                          ),
                          Divider(height: 1.h,

                          ),
                        ],
                      );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
