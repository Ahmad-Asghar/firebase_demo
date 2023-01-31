 import 'package:get/get.dart';

import 'model.dart';
class PersonDetails extends GetxController{



  RxList<Model>  modellist=<Model>[].obs;
  //  List<RxString> positions = <RxString>["x".obs,"x".obs,"x".obs,"x".obs,"x".obs,"x".obs,"x".obs,"x".obs,"x".obs,];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fun();
  }

  void fun() {
    var Result=[
      Model( value: "Ahmad",description: 'lives in sadiqabad,district Rahimyarkhan,Study in kfueit,works as developer'),
      Model( value: "Asjal",description: 'lives in sadiqabad,district Rahimyarkhan,Study in kfueit,works as developer'),
      Model( value: "Usman",description: 'lives in Rahimyarkhan,district Rahimyarkhan,Study in kfueit,works as developer'),



    ];
    modellist.value=Result;
  }

}

