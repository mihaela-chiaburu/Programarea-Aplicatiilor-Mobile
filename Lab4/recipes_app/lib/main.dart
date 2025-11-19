import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_app/core/di/injection_container.dart';
import 'package:recipes_app/pages/main_page.dart';

void main() {
  InjectionContainer.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
