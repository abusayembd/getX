// ignore_for_file: unnecessary_import, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_crush_course/state_management/simple_state_controller.dart';
import 'package:getx_crush_course/state_management/simple_state_controller_second_approach.dart';

class SimpleStateManagementSecondApproach extends StatelessWidget {
  const SimpleStateManagementSecondApproach({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple State Management '),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //on your stateless/ststefull class, use GetBuilder
              GetBuilder<ControllerTwo>(
                init: ControllerTwo(),
                builder: ((controller) => Text(
                      '${controller.counter}',
                      //'${Controller.to.counter}',
                      style: const TextStyle(fontSize: 28.0),
                    )),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.find<ControllerTwo>().increment(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
