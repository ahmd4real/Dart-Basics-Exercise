
import 'dart:io';
import 'course.dart';
import 'teacher.dart';
import 'sheet.dart';
import 'lecture.dart';
import 'coursera.dart';

void main() {
  String again;

  Course c=Course();
  Teacher t=Teacher();
  Sheet sh=Sheet();
  Coursera cor=Coursera();
  Lecture l=Lecture();


do{
  

  print('''Choose from 1 to 12:
  1- Register
  2- Login
  3- Add new course
  4- Delete course
  5- Add new lecture
  6- Delete Lecture
  7- Add new sheet
  8- Delete sheet
  9- Show teachers
  10- Show courses
  11- Show lectures
  12- Show sheets''');

  int ch = int.parse(stdin.readLineSync()!);

  if (ch == 1) {

    // Handle Register
    print('Enter name,email,password');
    String name=stdin.readLineSync()!;
    String email=stdin.readLineSync()!;
    String password=stdin.readLineSync()!;
     cor.register(name,email,password);
    
  } else if (ch == 2) {
    // Handle Login
    print('Enter name and password');
    String name=stdin.readLineSync()!;
    String password=stdin.readLineSync()!;

    cor.login(name, password);
  } else if (ch == 3) {
    
    // Handle Add new course
  print('Enter name , description');
  c=Course();  
  c. name=stdin.readLineSync()!;
  c. description=stdin.readLineSync()!;
  t.addCourse(c);
    
  } else if (ch == 4) {
    
    // Handle Delete course
    print('Enter course name');
    String name=stdin.readLineSync()!;
    t.deleteCourse(name);

  } else if (ch == 5) {
    
    // Handle Add new lecture
    print('Enter name,description,filename');
    l=Lecture();
    l.name=stdin.readLineSync()!;
    l.description=stdin.readLineSync()!;
    l.filename=stdin.readLineSync()!;
    c.addNewLecture(l);

  } else if (ch == 6) {

    // Handle Delete Lecture
    print('Enter lecture name');
    String name=stdin.readLineSync()!;
    c.deleteLecture(name);
    
  } else if (ch == 7) {

    // Handle Add new sheet
    print('Enter number,description,filename');
    sh=Sheet();
    sh.number=int.parse(stdin.readLineSync()!);
    sh.description=stdin.readLineSync()!;
    sh.filename=stdin.readLineSync()!;
    c.addNewSheet(sh);
    
  } else if (ch == 8) {
    // Handle Delete sheet
    print('Enter sheet number');
    int number=int.parse(stdin.readLineSync()!);
    c.deleteSheet(number);
  } else if (ch == 9) {
    // Handle Show teachers
    cor.showTeachers();
  } else if (ch == 10) {
    // Handle Show courses
    t.showCourse();
  } else if (ch == 11) {
    // Handle Show lectures
    c.showLecs();
  } else if (ch == 12) {
    c.showSheets();
    
  } else {
    print('Invalid choice. Please choose a number from 1 to 12.');
  }
  print('if you wanna continue press 1 and 0 to exit');
  again=stdin.readLineSync()!;

}while(again=='1');
}



