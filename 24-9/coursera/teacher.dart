import 'course.dart';

class Teacher{
  
late String name;
late String password;
late String email;
List<Course>courses=[];

void addCourse(Course c){
  courses.add(c);

}

void deleteCourse(String name){
  int index=-1;
  for (int i=0;i<courses.length;i++){
    if(courses[i].name==name){
    index=i; 
    break;
    }
  }
  if (index==-1) print('course not found');
  else{
    courses.removeAt(index);
  }

}

void showCourse(){
  print('Courses');
  courses.forEach((element) {print('name:${element.name} ,description:${element.description}');});
 }

 
}