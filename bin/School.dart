import 'Class_Teacher.dart';
import 'Class_ClassRoom.dart';
import 'Class_Staff.dart';
import 'Class_Student.dart';
import 'Class_courses.dart';

class School {
  String? _schoolName;
  String? _address;
  String? _principalName;
  List<Student> _students = [];
  List<Teacher> _teachers = [];
  List<Staff> _staffMembers = [];
  List<Course> _course = [];
  List<ClassRoom> _classRoom = [];

  School(this._schoolName, this._address, this._principalName);

  void addStudent(Student newStudent) {
    _students.add(newStudent);
    print("Student has been added to $_schoolName! ✅");
  }

  void printStudentDashboard() {
    print("=============================================");
    print("🏫 SCHOOL: $_schoolName | 📍 ADDRESS: $_address");
    print("👑 PRINCIPAL: $_principalName");
    print("=============================================");
    if (_students.isNotEmpty) {
      print("\n👥 [STUDENTS LIST]");
      for (var s in _students) {
        s.printData();
        print("--------------------");
      }
    } else {
      print("No students registered yet.");
    }
  }

  void addStaff(Staff newStaff) {
    _staffMembers.add(newStaff);
    print("Staff member has been added to $_schoolName! ✅");
  }

  void printStaffDashboard() {
    print("=============================================");
    print("🏫 SCHOOL: $_schoolName | 📍 ADDRESS: $_address");
    print("=============================================");
    if (_staffMembers.isNotEmpty) {
      print("\n🧑🏻‍💻 [STAFF LIST]");
      for (var st in _staffMembers) {
        st.printData();
        print("--------------------");
      }
    } else {
      print("No staff members registered yet.");
    }
  }

  void addCourse(Course newCourse) {
    _course.add(newCourse);
    print("Course has been added to $_schoolName! ✅");
  }

  void printCourseDashboard() {
    print("=============================================");
    print("🏫 SCHOOL: $_schoolName | 📍 ADDRESS: $_address");
    print("=============================================");
    if (_course.isNotEmpty) {
      print("\n📚 [COURSES LIST]");
      for (var co in _course) {
        co.printData();
        print("--------------------");
      }
    } else {
      print("No courses registered yet.");
    }
  }

  void addTeacher(Teacher newTeacher) {
    _teachers.add(newTeacher);
    print("Teacher has been added to $_schoolName! ✅");
  }

  void printTeacherDashboard() {
    print("=============================================");
    print("🏫 SCHOOL: $_schoolName | 📍 ADDRESS: $_address");
    print("👑 PRINCIPAL: $_principalName");
    print("=============================================");
    if (_teachers.isNotEmpty) {
      print("\n👨‍🏫 [TEACHERS LIST]");
      for (var t in _teachers) {
        t.printData();
        print("--------------------");
      }
    } else {
      print("No teachers registered yet.");
    }
  }

  void addClassRoom(ClassRoom newClassRoom) {
    _classRoom.add(newClassRoom);
    print("Class Room has been added to $_schoolName! ✅");
  }

  void printClassRoomDashboard() {
    print("=============================================");
    print("🏫 SCHOOL: $_schoolName | 📍 ADDRESS: $_address");
    print("👑 PRINCIPAL: $_principalName");
    print("=============================================");
    if (_classRoom.isNotEmpty) {
      print("\n🏛️ [CLASSROOM LIST]");
      for (var cl in _classRoom) {
        cl.printData();
        print("--------------------");
      }
    } else {
      print("No classrooms registered yet.");
    }
  }

  String? get schoolName => _schoolName;
  String? get address => _address;
  String? get principalName => _principalName;
  List<Student> get student => _students;
  List<Teacher> get teacher => _teachers;
  List<Staff> get staff => _staffMembers;
  List<Course> get course => _course;
  List<ClassRoom> get classRoom => _classRoom;

  set schoolName(String? name) => _schoolName = name;
  set address(String? addr) => _address = addr;
  set principalName(String? pName) => _principalName = pName;
}
