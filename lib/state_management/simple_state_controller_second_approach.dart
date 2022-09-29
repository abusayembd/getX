import 'package:get/get.dart';

class ControllerTwo extends GetxController {
  //with no static method: Get.find<controller>().imcrement();
  int counter = 0;

  void increment() {
    counter++;
    //use update to update counter variable
    //on UI increment is called
    update();
  }
}
