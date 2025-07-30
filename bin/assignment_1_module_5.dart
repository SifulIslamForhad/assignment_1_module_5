

abstract class Role {
  void displayRole();
}


//=============================================================================     2
class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    print("Role: Person");
  }

}
//=============================================================================





//=============================================================================      3
class Student extends Person {
  String studentID;
  String grade;
  List<double> courseScores;

  Student(
      String name,
      int age,
      String address,
      this.studentID,
      this.grade,
      this.courseScores,
      ) : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    double total = courseScores.reduce((a, b) => a + b);
    return total / courseScores.length;
  }

  void displayStudentInfo() {
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Average Score: ${calculateAverageScore()}");
  }
}
//=============================================================================









//=============================================================================   4
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(
      String name,
      int age,
      String address,
      this.teacherID,
      this.coursesTaught,
      ) : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayTeacherInfo() {
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
}
//=============================================================================










//=============================================================================    5
void main() {

  // Student
  List<double> scores = [90.0, 85.0, 82.0];
  Student student = Student("John Doe", 20, "123 Main St", "S123", "A", scores);

  print("Student Information:\n");
  student.displayStudentInfo();

  print("\n");

  // Teacher
  List<String> courses = ["Math", "English", "Bangla"];
  Teacher teacher = Teacher("Mrs. Smith", 35, "456 Oak St", "T456", courses);

  print("Teacher Information:\n");
  teacher.displayTeacherInfo();

}
//=============================================================================   git add Dart_Assignment.dart
