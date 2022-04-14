import 'package:flutter/material.dart';
import 'package:get/get.dart';
///
import '../bindings/all_bindings.dart';
import '../navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Mobile App UI Design',
      initialBinding: MyBindings(),
      home:  const MainNavigator(),
    );
  }
}
