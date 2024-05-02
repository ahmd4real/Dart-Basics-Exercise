import 'dart:io';


void main(){
  print('Enter two nUmbers');
  int n1=int.parse(stdin.readLineSync()!);
  int n2=int.parse(stdin.readLineSync()!);

  print('$n1 + $n2 = ${n1+n2}');
  print('$n1 - $n2 = ${n1-n2}');
  print('$n1 * $n2 = ${n1*n2}');
  print('$n1 / $n2 = ${n1/n2}');
}