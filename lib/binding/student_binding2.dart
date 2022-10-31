import 'package:get/instance_manager.dart';
import 'package:malda_app/database/local_database.dart';
import 'package:malda_app/repository/student_repository.dart';
import 'package:malda_app/viewmodel/student_view_model.dart';

class StudentBinding2 extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LocalDatabase());
    Get.lazyPut(() => StudentRepository(Get.find()));
    Get.lazyPut(() => StudentViewModel(Get.find()));
  }
}