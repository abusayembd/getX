// ignore_for_file: dead_code, unused_import

import 'package:flutter/material.dart';
import 'package:getx_crush_course/getx_controller/getx_controller_approach_one/view.dart';
import 'package:getx_crush_course/getx_controller/getx_controller_approach_two/view_approach_two.dart';
import 'package:getx_crush_course/getx_controller/getx_controller_simple_state_management/view_simple_state_management.dart';
import 'package:getx_crush_course/getx_controller/getx_controller_simple_state_management_with_unique_id/view_simple_state_management_with_unique_id.dart';
import 'package:getx_crush_course/navigation/navigation.dart';
//import 'package:getx_crush_course/navigation/navigation.dart';
import 'package:getx_crush_course/state_management/reactive_state_management.dart';
import 'package:getx_crush_course/state_management/simple_state_management.dart';
import 'package:getx_crush_course/state_management/simple_state_management_second_approach.dart';

import 'getx_controller/getx_controller_simple_state_management_with_unique_id_and_routing/view_for_unique_id_and_routing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // // navigation example
    // return GetNavigation();
    //
    // // Reactive State MAnagement example
    // return ReactiveStateManagement();
    //
    //Simple State Management example
    //return const SimpleStateManagement();
    //
    //Simple State Management Second Approach example
    //return const SimpleStateManagementSecondApproach();
    //
    //GetX controller & Reactive state management Example approach one
    //return const GetXControllerExample();
    //
    //GetX controller  Reactive state management Example approach two
    //return GetXControllerExampleTwo();
    //
    // GetX controller & simple state management example
    //return const GetXControllerExampleThree();
    //
    //GetX controller & simple state management example with unique id
    //return const GetXControllerExampleFour();
    //
    //GetX controller & simple state management example with unique id & routing
    return GetXControllerExampleFive();
  }
}
