import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'massages.dart';
import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      // locale: Locale('en':'US'),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en','US'),
      
      title: 'Interlization',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

