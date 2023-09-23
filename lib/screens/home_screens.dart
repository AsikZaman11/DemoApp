

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/home_controller.dart';
import 'package:untitled1/model/student_model.dart';
import '../fragement/AlarmFragment.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get eX 1'),
      ),
      body: Column(
        children: [
          Obx(() => Text(controller.cityName.value)),
          ElevatedButton(onPressed: (){
            controller.changeCityName('kaka');
          }, child: Text('Press'))
        ],

      )
    );
  }
}
