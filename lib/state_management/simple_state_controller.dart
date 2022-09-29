import 'package:get/get.dart';

class Controller extends GetxController {
  //with static method: controller.to.increment();
  //with no static method: Get.find<controller>().imcrement();
  static Controller get to => Get.find();

  int counter = 0;
  final name = "Sayem".obs;

  void increment() {
    counter++;
    //use update to update counter variable
    //on UI increment is called
    update();
  }
}
