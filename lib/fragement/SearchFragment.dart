import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SearchFragment extends StatelessWidget {
  const SearchFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text('3rd'),
            ElevatedButton(onPressed: (){
      Get.back();
      },child: Text('Back')),
          ],
        ),

      ),
    );
  }
}