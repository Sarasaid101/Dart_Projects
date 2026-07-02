import 'dart:io';

import 'Class_Person.dart';

class Student extends Person {
  String? _gradeLevel;
  double? _gpa;
  Student({
    String? name,
    String? gender,
    String? address,
    String? email,
    String? phone,
    double? id,
    int? age,
    String? gradeLevel,
    double? gpa,
  }) : super(
         name: name,
         gender: gender,
         address: address,
         email: email,
         phone: phone,
         id: id,
         age: age,
       ) {
    _gradeLevel = gradeLevel;
    _gpa = gpa;
  }
  @override
  void printData() {
    super.printData();
    print("Grade Level: $_gradeLevel");
    print("GPA: $_gpa");
  }

  @override
  void information() {
    super.information();
    print("Please Enter Your Grade Level : ");
    _gradeLevel = stdin.readLineSync();
    print("Please Enter Your GPA : ");
    _gpa = double.parse(stdin.readLineSync()!);
  }

  String? get gradeLevel => _gradeLevel;
  double? get gpa => _gpa;

  set gradeLevel(String? gradeLevel) => _gradeLevel = gradeLevel;
  set gpa(double? gpa) => _gpa = gpa;
}
