import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crush_course/getx_controller/getx_controller_approach_one/controller.dart';

class GetXControllerExample extends StatelessWidget {
  const GetXControllerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('GetX Controller First Approach')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Reactive state management approach one
              GetX<ControllerOne>(
                init: ControllerOne(),
                builder: (controller) => Text(
                  '${controller.count.value}',
                  style: const TextStyle(fontSize: 28.0),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => Get.find<ControllerOne>().increment(),
        ),
      ),
    );
  }
}
