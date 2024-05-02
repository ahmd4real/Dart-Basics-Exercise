import 'dart:io';
//NOTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
void main(){
  print('Enter number of values ');
  int n=int.parse(stdin.readLineSync()!);
  print('Enter values');
  List<int>values=[];
  int sum=0,avg;
  for (int i=0;i<n;i++){
    int data=int.parse(stdin.readLineSync()!);
    values.add(data);
    sum+=data;

  }
  int max=values[0],min=values[0];
  for (var i = 0; i < values.length; i++) {
      
    // Checking for largest value in the list
    if (values[i] > max) {
      max = values[i];
    }
      
    // Checking for smallest value in the list
    if (values[i] < min) {
      min = values[i];
    }
  }
  print('Values you enterd');
  values.forEach((element) {print(element);});
  print('Sum=$sum\nAVG=${sum/n}\nMAX=$max\nMIN=$min');
}