import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crush_course/getx_controller/getx_controller_simple_state_management/controller_simple_state_mamagement.dart';

class GetXControllerExampleThree extends StatelessWidget {
  const GetXControllerExampleThree({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text('GetX Controller Simple State Management')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Simple state management approach one
              GetBuilder<ControllerThree>(
                init: ControllerThree(),
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
          onPressed: () => Get.find<ControllerThree>().increment(),
        ),
      ),
    );
  }
}
