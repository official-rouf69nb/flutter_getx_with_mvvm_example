

import 'package:get/get.dart';
import 'package:malda_app/binding/student_binding.dart';
import 'package:malda_app/view/student_screen.dart';

import 'app_routes.dart';
import 'binding/student_binding2.dart';
import 'view/student_screen2.dart';

class AppPages {
  ///App's initial route
  static const initialRoute = AppRoutes.studentScreen;

  static final routes = [
    /// screen route initialization
    GetPage(
      name: AppRoutes.studentScreen,
      page: () => StudentScreen(),
      binding: StudentBinding(),
    ),

    GetPage(
      name: AppRoutes.studentScreen2,
      page: () => StudentScreen2(),
      binding: StudentBinding2(),
    ),
  ];
}