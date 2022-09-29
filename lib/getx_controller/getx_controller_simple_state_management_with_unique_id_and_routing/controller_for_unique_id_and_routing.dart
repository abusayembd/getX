import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerFive extends GetxController {
  // Declear the normal variable
  int count = 0;

  void increment() {
    count++;
    // update function look without implementing unique id
    //update();

    /* here we passed the id count1 in update function so which 
    widget contain id count1 will update only other widget won't if there is any
    */
    //update(['count1']);

    /* here we passed the id count1 in update function and provided a logic
       that if count is less then 10 then count will increase 
       so untill count is thells thn 10 only value 
       related to id: count1 will update
    */
    update(['count1'], count < 10);
  }

  void clearCount() {
    debugPrint("clearCount been called");

    count = 0;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    debugPrint('Controller onInit been called');

    // can be done lists depends on situations

    /// called every time variable-- count  changes (used for single variable)
    // ever(
    //   count,
    //   (_) => debugPrint('$_ has been changed'),
    // );

    /// called every time variables--changes (used for multiple variable, it takes list of variables)
    // everAll([count], (_) => debugPrint("$_ has been changed"));
    //
    // called only first time the variable $_ is changed
    // once(
    //   count,
    //   (_) => debugPrint("$_ was changed once"),
    // );

    /* called every time the user stops  typing for provided time. eg: 1000 millisecond
      use case: suppose there is a search bar what takes input from user( after-
      user finished typing) and then fatch data from api and display data--
      now debounce check if the user has stoped typing for provided time period-
      -then it will triggure the functions are resposceable for api call
    */
    // debounce(count, (_) => debugPrint("debounce $_"),
    //     time: const Duration(milliseconds: 1000));

    // interval ignore all changes with in provided time eg: 1000 millisecond
    //so in this code within 1000 millisecond all the chanes are done will be ignored
    // interval(count, (_) => debugPrint("interval $_"),
    //     time: const Duration(milliseconds: 1000));
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
