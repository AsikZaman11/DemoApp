

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/home_controller.dart';
import 'package:untitled1/model/student_model.dart';
import '../fragement/AlarmFragment.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  
  String name='';
  String roll='';
  String sub='';

  final formkey = GlobalKey<FormState>();

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get eX 2'),
      ),
      body: Container(
        child: Column(
          children: [
            Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Name",
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Empty Field';
                      }
                      return null;
                    },
                    onSaved: (value){
                      name = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Roll",
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Empty Field';
                      }
                      return null;
                    },
                    onSaved: (value){
                      roll = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Subject",
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Empty Field';
                      }
                      return null;
                    },
                    onSaved: (value){
                      sub = value.toString();
                    },
                  ),

                  SizedBox(
                    height: 10,
                  ),


                ],
              )
            ),
            ElevatedButton(
                onPressed: (){
                  if(formkey.currentState!.validate()){
                    formkey.currentState!.save();
                    controller.addStudentData(StudentModel(name,roll,sub));
                  }
                },
                child: Text('Add Data')
            ),

            ElevatedButton(onPressed: (){
              Get.to(AlarmFragment('second page'));
            }, child: Text('go to second page')),
            ElevatedButton(onPressed: (){
              SystemNavigator.pop();
            }, child: Text('Exit')),

            Expanded(
              child: GetBuilder<HomeController>(builder: (_){
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.studentList.length,
                    itemBuilder: (context, index){
                      return ListTile(
                        leading: Text(controller.studentList[index].roll),
                        title: Text(controller.studentList[index].name),
                        subtitle: Text(controller.studentList[index].subject),
                      );
                    }
                );
              }),
            )
          ],
        )
      )
    );
  }
}
