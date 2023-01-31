import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
class Getprofile extends GetxController{


  File imageFile=File('');
  getimage (){

debugPrint("ok");

    Future<void> _getFromGallery() async {
      final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
         imageFile = File(pickedFile.path );
         update();
      }
    }
_getFromGallery();
  }
}