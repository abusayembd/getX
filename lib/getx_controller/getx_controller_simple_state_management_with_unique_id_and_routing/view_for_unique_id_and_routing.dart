import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_crush_course/getx_controller/getx_controller_simple_state_management_with_unique_id_and_routing/details_page_for_unique_id_and_routing.dart';

class GetXControllerExampleFive extends StatelessWidget {
  GetXControllerExampleFive({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'GetX Controller Simple State Management with unique id and routing',
            style: TextStyle(fontSize: 12),
          )),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Simple state management approach with unique id
              ElevatedButton(
                onPressed: () => Get.to(() => DetailPage()),
                child: const Text("DetailPage"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
