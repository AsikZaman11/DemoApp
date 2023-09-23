

import 'package:get/get.dart';
import 'package:untitled1/fragement/SearchFragment.dart';

import '../fragement/AlarmFragment.dart';

import '../screens/home_screens.dart';

const String firstPage = '/firstPage';
const String secondPage = '/secondPage';
const String thirdPage = '/thirdPage';
List<GetPage> pages = [
  GetPage(name: firstPage, page: ()=>HomeScreen()),
  GetPage(name: secondPage, page: ()=>AlarmFragment('')),
  GetPage(name: thirdPage, page: ()=>SearchFragment()),
];