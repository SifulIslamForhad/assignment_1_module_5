
 abstract class Role{
   displayRole(){
    print('Student, Teacher');
   }
}


class Person implements Role{
  String name;
  int age;
  String address;

  @override
  displayRole() {
    print('Role');
  }

  Person(
      this.name, this.age, this.address
      );

}


class Student extends Person{

  String studentID;
  String grade;
  List<double> course_score = [];

  Student(
      String name,
      int age,
      String address,
      this.studentID,
      this.grade,
      this.course_score,
      ): super(name, age, address);

  @override
  displayRole() {
    print('Role: Student');
  }

  double calculate_score( ){
    double score = course_score.reduce((a,b)=>a+b);
    double total = score / course_score.length;
    return total;
  }

  display_student_info(){
    displayRole();
    print('Name: $name,');
    print('Age: $age,');
    print('Address: $address,');
    print('StudentID: $studentID,');
    print('Grade: $grade,');
    print('Score: ${calculate_score()},');
  }

}



class Teacher extends Person{

  String teacherID;
  List<String> course_list = [];

  Teacher(
      String name,
      int age,
      String address,
      this.teacherID,
      this.course_list,
      ):super(name, age, address);

  @override
  displayRole() {
   print('Role: Teacher');
  }

  display_Teacher_info(){
    displayRole();
    print('Name: $name,');
    print('Age: $age,');
    print('Address: $address,');
    print('StudentID: $teacherID,');
    print('Course List:--');
    for(var course in course_list){
      print('      -$course,');
    }
  }



}



void main(){
  print("Hello");

  List<double> score = [99, 98, 78, 88, 90];
  Student student = Student('Farhan', 3, 'Home', '0887', 'A+', score);
  student.display_student_info();


  print("\n");
  List<String> course = ['Java', 'HTML', 'CSS', 'JS', 'Dart'];
  Teacher teacher = Teacher('Nafisa', 3, 'Home', '0887', course);
  teacher.display_Teacher_info();

}


/*
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