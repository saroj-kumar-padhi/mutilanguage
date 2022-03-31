import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController{
  void changeLanguage(var paraml,var param2){
    var locate =Locale(paraml,param2);
    Get.updateLocale(locate);
  }
}