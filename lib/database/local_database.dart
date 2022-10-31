
import 'package:shared_preferences/shared_preferences.dart';

class LocalDatabase{
  Future<bool> post(dynamic data)async{
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setString('student',data);
  }

  Future<dynamic> get()async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('student');
  }
}