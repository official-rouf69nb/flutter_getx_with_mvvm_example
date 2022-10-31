import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malda_app/viewmodel/student_view_model.dart';

class StudentScreen extends GetView<StudentViewModel>{
  const StudentScreen({Key? key}) : super(key: key);

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
          ElevatedButton(onPressed: controller.getStudent, child: Text("Get")),
          ElevatedButton(onPressed: controller.insertStudent, child: Text("Insert")),
          ElevatedButton(onPressed: controller.GoTOTwo, child: Text("Go")),
        ],
      ),
    );
  }

}