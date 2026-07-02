import 'dart:io';

import 'Class_Person.dart';

class Teacher extends Person {
  String? _subjectSpecialization;
  double? _salary;
  Teacher({
    String? name,
    String? gender,
    String? address,
    String? email,
    String? phone,
    double? id,
    int? age,
    String? subjectSpecialization,
    double? salary,
  }) : super(
         name: name,
         gender: gender,
         address: address,
         email: email,
         phone: phone,
         id: id,
         age: age,
       ) {
    _subjectSpecialization = subjectSpecialization;
    _salary = salary;
  }
  @override
  void printData() {
    super.printData();
    print("The Subject Specialization Is : $_subjectSpecialization");
    print("The Salary Is : $_salary");
  }

  @override
  void information() {
    super.information();
    print("Please Enter Your Subject Specialization : ");
    _subjectSpecialization = stdin.readLineSync();
    print("Please Enter Your Salary : ");
    _salary = double.parse(stdin.readLineSync()!);
  }

  String? get subjectSpecialization => _subjectSpecialization;
  double? get salary => _salary;

  set subjectSpecialization(String? subjectSpecialization) =>
      _subjectSpecialization = subjectSpecialization;
  set salary(double? salary) => _salary = salary;
}
