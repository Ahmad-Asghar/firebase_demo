import 'package:get/get.dart';

class Previous extends GetxController{
  RxList<String> previousmesseges = [
    'Hello there?',
    'ok..see you soon',
    'I am not going',
  ].obs as RxList<String>;
}