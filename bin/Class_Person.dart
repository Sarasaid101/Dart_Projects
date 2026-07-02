import 'dart:io';

class Person {
  String? _name;
  String? _gender;
  String? _address;
  String? _email;
  String? _phone;
  double? _id;
  int? _age;
  Person({
    String? name,
    String? gender,
    String? address,
    String? email,
    String? phone,
    double? id,
    int? age,
  }) {
    _name = name;
    _gender = gender;
    _age = age;
    _email = email;
    _phone = phone;
    _id = id;
    _address = address;
  }
  void printData() {
    print("The Name Is : $_name");
    print("The Gender Is : $_gender");
    print("The Age Is : $_age");
    print("The Address Is : $_address");
    print("The Email Is : $_email");
    print("The Phone Is : $_phone");
    print("The ID Is : $_id");
  }

  void information() {
    print("Enter Name:");
    _name = stdin.readLineSync();
    print("Enter Gender:");
    _gender = stdin.readLineSync();
    print("Enter Address:");
    _address = stdin.readLineSync();
    print("Enter Email:");
    _email = stdin.readLineSync();
    print("Enter Phone:");
    _phone = stdin.readLineSync();
    print("Enter ID:");
    _id = double.parse(stdin.readLineSync()!);
    print("Enter Age:");
    _age = int.parse(stdin.readLineSync()!);
  }

  String? get name => _name;
  String? get address => _address;
  String? get gender => _gender;
  String? get email => _email;
  String? get phone => _phone;
  int? get age => _age;
  double? get id => _id;

  set name(String newName) => _name = newName;
  set gender(String newGender) => _gender = newGender;
  set email(String newEmail) => _email = newEmail;
  set phone(String newPhone) => _phone = newPhone;
  set address(String newAddress) => _address = newAddress;
  set age(int newAge) => _age = newAge;
  set id(double newId) => _id = newId;
}
