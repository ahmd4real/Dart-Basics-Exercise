import 'dart:io';


void main(){
  print('Enter two Numbers');
  int n1=int.parse(stdin.readLineSync()!);
  int n2=int.parse(stdin.readLineSync()!);
  print('Choose operation + , - , / , *');
  String process=(stdin.readLineSync()!);

  
  if (process=='+')
  print('$n1 + $n2 = ${n1+n2}');
  else if (process=='-')
  print('$n1 - $n2 = ${(n1-n2).abs()}');
  else if (process=='*')
  print('$n1 * $n2 = ${n1*n2}');
  else {
  n2==0?print('not Allowed'):print('$n1 / $n2 = ${n1/n2}');
  }
}