import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crush_course/state_management/simple_state_controller.dart';

class SimpleStateManagement extends StatelessWidget {
  const SimpleStateManagement({super.key});

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
              GetBuilder<Controller>(
                init: Controller(),
                builder: ((controller) => Text(
                      '${controller.counter}',
                      //'${Controller.to.counter}',
                      style: const TextStyle(fontSize: 28.0),
                    )),
              ),
              GetX<Controller>(
                builder: (controller) => Text(controller.name.value),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Controller.to.increment(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
