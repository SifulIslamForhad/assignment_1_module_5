
// Siful Islam Forhad
// assignment_1_module_5


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
  print("");

  // Student
  List<double> scores = [90.0, 85.0, 82.0];
  Student student = Student("John Doe", 20, "123 Main St", "S123", "A", scores);

  print("Student Information:");
  student.displayStudentInfo();



  print("\n");
  // Teacher
  List<String> courses = ["Math", "English", "Bangla"];
  Teacher teacher = Teacher("Mrs. Smith", 35, "456 Oak St", "T456", courses);

  print("Teacher Information:");
  teacher.displayTeacherInfo();

}
//=============================================================================






















  /*
  Module 5 Assignment
  Assignment:
  Enhance the student management system by using interfaces to ensure
  role-based behavior and actions.
  Implement the following:


  A. Define an interface named Role:
  Declare a method void displayRole() to be implemented by classes that
  represent different roles (Student, Teacher).


  B. Create a class Person:
  Include attributes for name, age, and address.
  Include a reference to the Role interface.
  Provide a constructor and getter methods for the attributes.
  Implement the Role interface methods.


  C. Create a class Student that extends Person:
  Include additional attributes for studentID, grade, and a list to store
  courseScores.
  Provide a constructor to initialize attributes.
  Override the displayRole() method to display "Role: Student".
  Implement a method to calculate the average score of courses.


  D. Create another class Teacher that extends Person:
  Include an attribute for teacherID and an array to store coursesTaught.
  Provide a constructor to initialize attributes.
  Override the displayRole() method to display "Role: Teacher".
  Implement a method to display the courses taught by the teacher.


  E. Create a class StudentManagementSystem:
  In the main method, create instances of Student and Teacher classes.
  Set the attributes using appropriate methods.
  Use the displayRole() method to display the role of each person.
  This extended scenario incorporates interfaces to provide role-based
  behavior for students and Teachers.
   */



