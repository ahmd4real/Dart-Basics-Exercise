import 'dart:io';


void main(){
  print('Enter two Numbers');
  int n1=int.parse(stdin.readLineSync()!);
  int n2=int.parse(stdin.readLineSync()!);
  print('Choose operation + , - , / , *');
  String process=(stdin.readLineSync()!);

  
  switch (process){
      case '+':
 print('$n1 + $n2 = ${n1+n2}');
 break;
  case '-':
  print('$n1 - $n2 = ${(n1-n2).abs()}');
  break;
  case '*':
  print('$n1 * $n2 = ${n1*n2}');
  break;
  case '/' :
  n2==0?print('not Allowed'):print('$n1 / $n2 = ${n1/n2}');
  break;
  
  default:
  print('try again');
  break;

  }
 
  
}