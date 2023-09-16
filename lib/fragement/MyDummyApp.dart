
import 'package:flutter/material.dart';
import 'package:untitled1/fragement/AlarmFragment.dart';

class MyDummyApp extends StatelessWidget {
  const MyDummyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
        child: Card(

          elevation: 30,
          child: SizedBox(
            width: 100,
            height: 100,

            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AlarmFragment('hi ki khobor')));
                }, child: Text('click me'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
