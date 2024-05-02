import 'dart:io';

class Car{
  late int code;
  late String model;
  late String color;
  late double price;

  Car(int code,String model,String color,double price){
    this.code=code;
    this.model=model;
    this.color=color;
    this.price=price;
  }

  void getData(){
  print('Enter code');
  code = int.parse(stdin.readLineSync()!);
  print('Enter model');
  model = stdin.readLineSync()!;
  print('Enter color');
  color = stdin.readLineSync()!;
  print('Enter price');
  price = double.parse(stdin.readLineSync()!);
  }

  void printObj(){
   print( 'code=${code} \nmodel=${model} \ncolor=${color} \nprice=${price}');
  }

}