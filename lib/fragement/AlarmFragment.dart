import 'package:flutter/material.dart';

class AlarmFragment extends StatelessWidget {


  String msg;
  AlarmFragment(this.msg,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.blue,
      child: Center(
        child: Card(
          elevation: 40,
          shadowColor: Colors.black,
          child: SizedBox(
            child: Column(
              children: [
                Text(msg),
                SizedBox(height: 10,),
                LinearProgressIndicator(

                ),
                CircularProgressIndicator()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
