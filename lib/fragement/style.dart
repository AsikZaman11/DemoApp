
import 'package:flutter/material.dart';

InputDecoration AppInputStyle(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    fillColor:  Colors.greenAccent,
    filled: true,
    border: OutlineInputBorder(),
    labelText: label,
  );
}

TextStyle HeadTextStyle(){
  return TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold
  );
}


ButtonStyle buttonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: Colors.green,

  );
}