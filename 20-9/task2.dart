import 'dart:io';
void main(){
  print('Enter number of Items ');
  int n=int.parse(stdin.readLineSync()!);
  print('Enter Keys And values ');
  Map<String,int>values={};
  int sum=0,avg;
  for (int i=0;i<n;i++){
    print('Enter Key');
    String key=(stdin.readLineSync()!);
    print('Enter Value');
    int value=int.parse(stdin.readLineSync()!);
    values[key]=(value);
    sum+=value;
  }
  int max=values.values.first,min=values.values.first;
  values.forEach((key, value) {
    if (value > max) {
      max = value;
    }
    if (value < min) {
      min = value;
    }
  });
  print('Values you enterd');
  values.forEach((key,element) {print('$element');});
  print('Sum=$sum\nAVG=${sum/n}\nMAX=$max\nMIN=$min');
}