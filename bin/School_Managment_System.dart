import 'dart:io';

import 'Class_Teacher.dart';
import 'Class_ClassRoom.dart';
import 'Class_Staff.dart';
import 'Class_Student.dart';
import 'Class_courses.dart';
import 'School.dart';

void main() {
  print("--- 🏫 Welcome to the School Management System 🏫 ---");
  School mySchool = School(
    "Future International Academy",
    "ALEX, Egypt",
    "Dr. Sara Mohamed",
  );
  bool isRunning = true;
  while (isRunning) {
    print("\n💡 MAIN MENU - Choose an option:");
    print("1  -> 👥 Add New Student");
    print("2  -> 👥 View Students Dashboard");
    print("3  -> 👨‍🏫 Add New Teacher");
    print("4  -> 👨‍🏫 View Teachers Dashboard");
    print("5  -> 💼 Add New Staff Member");
    print("6  -> 💼 View Staff Dashboard");
    print("7  -> 📚 Add New Course");
    print("8  -> 📚 View Courses Dashboard");
    print("9  -> 🚪 Add New Classroom");
    print("10 -> 🚪 View Classrooms Dashboard");
    print("11 -> ❌ Exit Program");
    print("---------------------------------------------");

    stdout.write("Enter your choice (1-11): ");
    String? input = stdin.readLineSync();
    int? choice = int.tryParse(input ?? "");

    print("");

    switch (choice) {
      case 1:
        {
          print("=== Adding New Student ===");
          Student s = Student();
          s.information();
          mySchool.addStudent(s);
          break;
        }
      case 2:
        {
          mySchool.printStudentDashboard();
          break;
        }
      case 3:
        {
          print("=== Adding New Teacher ===");
          Teacher t = Teacher();
          t.information();
          mySchool.addTeacher(t);
          break;
        }
      case 4:
        {
          mySchool.printTeacherDashboard();
          break;
        }
      case 5:
        {
          print("=== Adding New Staff Member ===");
          Staff st = Staff();
          st.information();
          mySchool.addStaff(st);
          break;
        }
      case 6:
        {
          mySchool.printStaffDashboard();
          break;
        }
      case 7:
        {
          print("=== Adding New Course ===");
          Course cr = Course(null, null, null);
          cr.information();
          mySchool.addCourse(cr);
          break;
        }
      case 8:
        {
          mySchool.printCourseDashboard();
          break;
        }
      case 9:
        {
          print("=== Adding New Classroom ===");
          ClassRoom cl = ClassRoom(null, null);
          cl.information();
          mySchool.addClassRoom(cl);
          break;
        }
      case 10:
        {
          mySchool.printClassRoomDashboard();
          break;
        }
      case 11:
        {
          print("Thank you for using our School System. Goodbye! 👋");
          isRunning = false;
          break;
        }
      default:
        print("⚠️ Invalid choice! Please enter a number between 1 and 11.");
    }
  }
}
