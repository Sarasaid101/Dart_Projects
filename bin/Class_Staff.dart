import 'dart:io';

import 'Class_Person.dart';

class Staff extends Person {
  String? _role;
  double? _salary;
  Staff({
    String? name,
    String? gender,
    String? address,
    String? email,
    String? phone,
    double? id,
    int? age,
    String? role,
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
    _role = role;
    _salary = salary;
  }
  @override
  void printData() {
    super.printData();
    print("The Role Is : $_role");
    print("The Salary Is $_salary");
  }

  @override
  void information() {
    super.information();
    print("Please Enter Role : ");
    _role = stdin.readLineSync();
    print("Please Enter Salary ");
    _salary = double.parse(stdin.readLineSync()!);
  }

  String? get role => _role;
  double? get salary => _salary;

  set role(String? role) => _role = role;
  set salary(double? salary) => _salary = salary;
}
