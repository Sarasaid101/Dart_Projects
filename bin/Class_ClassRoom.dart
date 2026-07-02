import 'dart:io';

class ClassRoom {
  int? _roomNumber;
  int? _capacity;
  ClassRoom(int? roomNumber, int? capacity) {
    _roomNumber = roomNumber;
    _capacity = capacity;
  }
  void printData() {
    print("The Room Number Is : $roomNumber");
    print("The Capacity : $_capacity");
  }

  void information() {
    print("Please Enter The Room Number : ");
    _roomNumber = int.parse(stdin.readLineSync()!);
    print("Please Enter Capacity : ");
    _capacity = int.parse(stdin.readLineSync()!);
  }

  int? get roomNumber => _roomNumber;
  int? get capacity => _capacity;

  set roomNumber(int? roomNumber) => _roomNumber = roomNumber;
  set capacity(int? capacity) => _capacity = capacity;
}
