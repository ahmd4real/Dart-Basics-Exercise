import 'dart:io';


void main(){
  print('Enter Your info Name,Age,ID');
  String name=stdin.readLineSync()!;
  int age=int.parse(stdin.readLineSync()!);
  int id=int.parse(stdin.readLineSync()!);
  double totalDeg=0;
  List<double>degress=[];
  print('Enter your degree in five materials');

  for (int i=0;i<5;i++) {
    double element=double.parse(stdin.readLineSync()!);
     degress.add(element);
     totalDeg+=element;
  };
  print('Your Info\n---------------------');
  print('Name:$name\nAge=$age\nID=$id');
  for (int i=0;i<degress.length;i++){
    print('Your degree in course ${i+1} = ${degress[i]}');
  }
  print('Total Degree= $totalDeg out 250');
  double per=(totalDeg/250)*100;
  print('Percentage = $per%');

  if (per>=50 && per<=65)
  print('Pass');
  else if (per>=66 && per<=75)
  print('Good');
  else if (per>=76 && per<85)
  print('Very good');
  else if (per>=85 && per<=100)
  print('Excellent');
  else print('Failed');


}