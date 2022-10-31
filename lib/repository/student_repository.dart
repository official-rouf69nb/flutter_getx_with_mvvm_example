import 'dart:convert';

import 'package:malda_app/database/local_database.dart';
import 'package:malda_app/model/student.dart';

class StudentRepository{
  final LocalDatabase database;
  StudentRepository(this.database);

  Future<bool> insertStudent(StudentModel student)async{
    return database.post(jsonEncode(student.toJson())).then((value) => value).catchError((e)=> false);
  }

  Future<StudentModel> getStudent()async {
    return database.get().then((data){
      if(data != null){
        var decoded = jsonDecode(data);
        return StudentModel.fromJson(decoded);
      }
      else {
        return StudentModel.empty();
      }
    }).catchError((e)=>
        StudentModel.empty()
    );
  }
}