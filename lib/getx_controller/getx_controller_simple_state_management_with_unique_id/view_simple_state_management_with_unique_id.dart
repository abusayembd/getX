import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crush_course/getx_controller/getx_controller_simple_state_management_with_unique_id/controller_simple_state_mamagement_with_unique_id.dart';

class GetXControllerExampleFour extends StatelessWidget {
  const GetXControllerExampleFour({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'GetX Controller Simple State Management with unique id',
            style: TextStyle(fontSize: 14),
          )),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Simple state management approach with unique id
              GetBuilder<ControllerFour>(
                id: 'count1', // inique id
                init: ControllerFour(),
                builder: (controller) => Text(
                  '${controller.count}',
                  style: const TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
              GetBuilder<ControllerFour>(
                id: 'count2',
                builder: (controller) => Text(
                  '${controller.count}',
                  style: const TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => Get.find<ControllerFour>().increment(),
        ),
      ),
    );
  }
}
