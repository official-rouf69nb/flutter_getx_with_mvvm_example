import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malda_app/viewmodel/student_view_model.dart';

class StudentScreen2 extends GetView<StudentViewModel>{
  const StudentScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Obx((){
              return Center(child: Text(controller.student.value.name));
            }),
          ),
          Text("Hi"),
        ],
      ),
    );
  }

}