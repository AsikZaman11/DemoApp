
import 'package:get/get.dart';

import '../model/student_model.dart';

class HomeController extends GetxController{
RxString cityName = 'Dhaka'.obs;

void changeCityName(final name){
 cityName.value = name;
}
}

