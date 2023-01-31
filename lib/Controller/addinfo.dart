import 'package:ahmad_test/Models/model.dart';
import 'package:get/get.dart';

import '../Models/persondetails.dart';

class AddInfo extends GetxController{
  PersonDetails pdetaisl= Get.put(PersonDetails());
  void addNameDescription(String name,String Description){

    pdetaisl.modellist.add(Model(description: Description, value: name));
print("added");
  }

}