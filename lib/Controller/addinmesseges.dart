import 'package:ahmad_test/Models/inboxmodel.dart';
import 'package:get/get.dart';

class AddMessege extends GetxController{
  InboxModel inbox=Get.put(InboxModel());
  void addMessege(String name){

    inbox.persons.add(name.toString());

  }
}