import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Next Screen"),
            Text("argument: ${Get.arguments}"),

            //# ap-1-2
            // Text(
            //     "parameters: ${Get.parameters['id']} ${Get.parameters['name']}"),
            Text("parameters: ${Get.parameters}"),
            ElevatedButton(
              onPressed: () {
                Get.back(
                  result: "Success",
                  closeOverlays: false,
                );
              },
              child: const Text("Back"),
            ),
            //navigation with named route
          ],
        ),
      ),
    );
  }
}
