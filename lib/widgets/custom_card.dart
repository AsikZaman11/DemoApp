import 'package:flutter/material.dart';
import 'package:untitled1/const/all_styles.dart';

class CustomCard extends StatelessWidget {

  String title;
  String price;

  CustomCard({required this.title,required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(title,style: TextStyle(),),
            Text(price,style: TextStyle(),),
          ],
        ),
      ),
    );
  }
}
