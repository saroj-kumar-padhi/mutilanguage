import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/pages/controller/changeController.dart';

class MyHomePage extends StatelessWidget {
 MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("localization"),
        
        ),
        body: Center(
          child: Column(
         
            children: [
            Text("hello".tr),
             const SizedBox(height: 20,),
              Rbutton("Hindi",'hi','IN'),
              const SizedBox(height: 40,),
              Rbutton("English",'en','IN'),
            ],
           
          ),
        ),
        
      );
    
  }

  RaisedButton Rbutton(String data,String lang, String contry) {
    return RaisedButton(onPressed: (){
      myController.changeLanguage(lang,contry);
    },
        child:  Text(data),
        );
  }
}

