import 'dart:io';


void main(){
  double sugar=25.5;
  double rice=30.75;
  double tea=55.5;

  

  
  print('Enter units of Sugar you want');
  int sugarUnits=int.parse(stdin.readLineSync()!);
  print('Enter units of rice you want');
  int riceUnits=int.parse(stdin.readLineSync()!);
  print('Enter units of tea you want');
  int teaUnits= int.parse(stdin.readLineSync()!);
  
  print('total Price for Rice = ${riceUnits*rice}');
  print('total Price for sugar = ${sugarUnits*sugar}');
  print('total Price for tea = ${teaUnits*tea}');

  double totalPrice=riceUnits*rice+sugarUnits*sugar+teaUnits*tea;
  double afterdis=totalPrice-(totalPrice*0.1);
  print('Total Price=  $totalPrice \nAfter Discount= $afterdis');
  
}