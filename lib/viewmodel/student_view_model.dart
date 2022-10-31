

import 'package:get/get.dart';
import 'package:malda_app/app_routes.dart';
import 'package:malda_app/model/student.dart';
import 'package:malda_app/repository/student_repository.dart';
class StudentViewModel extends GetxController{
  final StudentRepository repository;
  StudentViewModel(this.repository);
  var student =  StudentModel.empty().obs;


  void insertStudent()async{
    var result = await repository.insertStudent(StudentModel(name: "S1 ${DateTime.now().toString()}", roll: 1));
    if(!result){
      print("Student not inserted");
      return;
    }
    getStudent();
  }

  void getStudent()async {
    student.value = await repository.getStudent();
  }

  void GoTOTwo() {
    Get.toNamed(AppRoutes.studentScreen2);
  }
}