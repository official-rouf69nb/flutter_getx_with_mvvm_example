import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_pages.dart';
import 'binding/student_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'RiseUp Labs Practical Test',
      initialRoute: AppPages.initialRoute,
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      enableLog: false,
    );
  }
}

