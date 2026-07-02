import 'dart:io';
import 'Class_Teacher.dart';

class Course {
  String? _courseCode;
  String? _courseName;
  Teacher? _courseTeacher;
  Course(this._courseCode, this._courseName, this._courseTeacher);
  void printData() {
    print("The Course Code : $_courseCode");
    print("The Course Name : $_courseName");
    if (_courseTeacher != null) {
      print("--- Teacher Details ---");
      _courseTeacher!.printData();
    } else {
      print("No Teacher Assigned to this course yet.");
    }
  }

  void information() {
    print("Please Enter The Course Code : ");
    _courseCode = stdin.readLineSync();
    print("Please Enter The Course Name : ");
    _courseName = stdin.readLineSync();
    print("--- Entering Teacher Information ---");
    _courseTeacher = Teacher();
    _courseTeacher!.information();
  }

  String? get courseCode => _courseCode;
  String? get courseName => _courseName;
  Teacher? get courseTeacher => _courseTeacher;

  set courseCode(String? courseCode) => _courseCode = courseCode;
  set courseName(String? courseName) => _courseName = courseName;
  set teacherName(Teacher? teacherName) => _courseTeacher = courseTeacher;
}
