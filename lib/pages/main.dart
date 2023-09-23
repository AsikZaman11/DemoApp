import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../fragement/SearchFragment.dart';
import '../routes/routes.dart';
import '../screens/home_screens.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
int add=0;
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: pages,
      initialRoute: firstPage,
      home: HomeScreen(),
    );
  }
}

