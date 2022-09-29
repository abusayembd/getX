import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerTwo extends GetxController {
  //Declear the reactive variable
  final count = 0.obs;
  //
  //int count = 0 ;
  void increment() {
    count.value++;
    // count++;
    //update();
    //update(['count']);s
    //update(['count1'], count <10);
  }

  void clearCount() {
    debugPrint("clearCount been called");
    count.value = 0;
    //count = 0;
    //update();
  }

  @override
  void onInit() {
    super.onInit();
    debugPrint('Controller onInit been called');
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint("Controller onReady been called");
  }

  @override
  void onClose() {
    debugPrint("Controller onReady been called");
    clearCount();
    super.onClose();
  }
}
