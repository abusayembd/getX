// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crush_course/navigation/next_screen.dart';

class GetNavigation extends StatelessWidget {
  GetNavigation({super.key});

  //# ap-1-2
  //var parameters = <String, String>{'id': '123', 'name': 'Sayem'};

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => GetNavigation()),
        //named route without parameter
        //GetPage(name: '/next', page: () => const NextScreen()),

        //parameeter in named route
        //approch one
        //# ap-1 (for keep track of code )
        //GetPage(name: '/next/:id', page: () => const NextScreen()),

        //approch one with multiple parameter
        //# ap-1-2 (for keep track of code )
        //GetPage(name: '/next:id &  name', page: () => const NextScreen()),

        GetPage(name: '/next/', page: () => const NextScreen()),
      ],
      routingCallback: (routing) {
        if (routing!.current == '/next') {
          debugPrint('Open Ads');
        }
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX NAvigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //navigation without named route
              ElevatedButton(
                onPressed: () async {
                  var data = await Get.to(() => const NextScreen(),
                      transition: Transition
                          .rightToLeft, // next screen will appair from right to left
                      duration: const Duration(
                          seconds: 1), // next screen loading time duration
                      curve: Curves.easeInOut, //for animation
                      arguments: "Hello World from Get.to()");
                  debugPrint(data);
                },
                child: const Text("Get.to(NextScreen())"),
              ),
              //navigation with named route
              ElevatedButton(
                onPressed: () {
                  Get.off(const NextScreen(),
                      arguments: 'Hello from Get.off()');
                },
                child: const Text("Get.off(NextScreen())"),
              ),

              //# ap-1 (for keep track of code )
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/next",
                      arguments: "Hello from Get.toNamed('/next')");
                },
                child: const Text('Get.toNamed("/next")'),
              ),

              //# ap-1 with single parameeter (for keep track of code )
              // ElevatedButton(
              //   onPressed: () {
              //     Get.toNamed('/next?id=123',
              //         arguments: 'Hello from Get.toNamed("/next?id=123")');
              //   },
              //   child: const Text('Get.toNamed("/next?id=123")'),
              // ),

              //# ap-1 with multiple parameeters (for keep track of code )
              // ElevatedButton(
              //   onPressed: () {
              //     Get.toNamed(
              //         "/next?id=${parameters['id']}&name=${parameters['name']}",
              //         arguments: "Hello from Get.toNamed('/next? id & name')");
              //   },
              //   child: const Text('Get.toNamed("/next? id & name")'),
              // ),

              //
              //
              ElevatedButton(
                onPressed: () {
                  Get.offNamed('/next',
                      arguments: 'Hello from Get.offNamed("/next"))');
                },
                child: const Text("Get.offNamed('/next')"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
