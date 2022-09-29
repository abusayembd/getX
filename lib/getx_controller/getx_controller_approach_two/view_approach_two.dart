import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crush_course/getx_controller/getx_controller_approach_two/controller_approach_two.dart';

class GetXControllerExampleTwo extends StatelessWidget {
  GetXControllerExampleTwo({super.key});

  final contrtroller = Get.put(ControllerTwo());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('GetX Controller Second Approach')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Reactive state management approach two
              Obx(() => Text(
                    '${contrtroller.count.value}',
                    style: const TextStyle(fontSize: 28.0),
                  ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => Get.find<ControllerTwo>().increment(),
        ),
      ),
    );
  }
}
