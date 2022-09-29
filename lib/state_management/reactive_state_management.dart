import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'user.dart';

class ReactiveStateManagement extends StatelessWidget {
  ReactiveStateManagement({super.key});

  //1. 1st approach Use of Rx{Type}
  // initial value is recomended but not mandatory
  // final name = RxString('');
  // final isLogged = RxBool(false);
  // final count = RxInt(0);
  // final balance = RxDouble(0.0);
  // final items = RxList<String>([]);
  // final myMap = RxMap<String, int>({});

  // //2. the 2nd approach Use Rx and Use Dart's Generics
  // final name = RxString('');
  // final isLogged = Rx<bool>(false);
  // final count = Rx<int>(0);
  // final balance = Rx<double>(0.0);
  // final number = Rx<num>(0);
  // final items = Rx<List<String>>([]);
  // final myMap = Rx<Map<String, int>>({});
  // //custom classes -  it can be any class literally
  // //final user = Rx<User>(User()); //not assining value NB: we have default value
  // final user = Rx<User>(User(name: "Sayem", age: 30));

  //3. more practical approach using .obs as property of our value
  final name = ''.obs;
  final isLogged = false.obs;
  final count = 0.obs;
  final balance = 0.0.obs;
  final number = 0.obs;
  final items = <String>[].obs;
  final myMap = <String, int>{}.obs;
  //custom classes -  it can be any class literally
  final user = User(name: 'Sayem', age: 26).obs;
  //
  //Attribute inside User class is observer
  // final user = User();

  //counter increment function
  //void increment() => count.value++;
  void toUpper() {
    // approach one to update custom class
    // entire class us observer
    user.update((user) {
      user!.name = user.name.toUpperCase();
      user.age = user.age + 1;
    });

    //approach two to update custom class
    //Attribute inside User class is observer
    // user.name.value = user.name.value.toUpperCase();
    // user.age.value++;

    //another approach to update the user variable
    // user(User(name: 'ABU SAYEM'));
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Reactive State'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //counter output
              // Obx(
              //   () => Text(
              //     '${count.value}',
              //     style: const TextStyle(fontSize: 28.0),
              //   ),
              // ),
              Obx(
                () => Text(
                  //entire User class is observewr
                  '${user.value.name} ${user.value.age}',
                  //
                  //attribute inside User class is observer
                  // '${user.name.value}  ${user.age.value}',
                  style: const TextStyle(fontSize: 28.0),
                ),
              )
            ],
          ),
        ),
        //for counter
        // floatingActionButton: FloatingActionButton(
        //   child: const Icon(Icons.add),
        //   onPressed: () => increment(),
        // ),
        //Attribute insidde User class is observer
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_upward),
          onPressed: () => toUpper(),
        ),
      ),
    );
  }
}
