import 'teacher.dart';

class Coursera{

  List<Teacher>teachers=[];

  void register(String name,String email,String password){
    Teacher t=Teacher();
    t.name=name;
    t.email=email;
    t.password=password;
    teachers.add(t);

  }

  void login(String name,String password){
    int index=-1;
  for (int i=0;i<teachers.length;i++){
    if(teachers[i].name==name){
    index=i; 
    if (teachers[i].password==password){
      print('Login Successfully');
    }else{
       print('Password not correct');
    }

    }
  }
  if (index==-1) print('user not found');
  // else{
  //   teachers.removeAt(index);
  // }

}

void showTeachers(){
  print('Teachers');
  teachers.forEach((element) {print('name:${element.name} ,email:${element.email} ,password:${element.password}');});
 }


  
}