import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crush_course/getx_controller/getx_controller_simple_state_management_with_unique_id_and_routing/controller_for_unique_id_and_routing.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key});
  final controller = Get.put(ControllerFive());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("data"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ControllerFive>(
              id: 'count1',
              init: ControllerFive(),
              builder: ((controller) => Text(
                    '${controller.count}',
                    style: const TextStyle(fontSize: 28.0),
                  )),
            ),
            GetBuilder<ControllerFive>(
              id: 'count2',
              init: ControllerFive(),
              builder: ((controller) => Text(
                    '${controller.count}',
                    style: const TextStyle(fontSize: 28.0),
                  )),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Get.find<ControllerFive>().increment(),
      ),
    );
  }
}
