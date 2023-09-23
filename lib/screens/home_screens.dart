

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/home_controller.dart';
import 'package:untitled1/model/student_model.dart';
import '../fragement/AlarmFragment.dart';
import '../routes/routes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  String name='';
  String roll='';
  String subject='';
  final formkey = GlobalKey<FormState>();
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get eX route'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Get.toNamed(secondPage);
          }, child: Text('1st'))
        ],
      )
    );
  }
}
