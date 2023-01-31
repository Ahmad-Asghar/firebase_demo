import 'package:get/get.dart';

class InboxModel extends GetxController{
  RxList<String> persons = [
    'Ahmad',
    'Asjal',
    'Usman',
  ].obs as RxList<String>;
}