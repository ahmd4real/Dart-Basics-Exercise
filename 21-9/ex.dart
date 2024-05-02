import 'dart:io';


void main(){
  print('Enter two Numbers');
  int n1=int.parse(stdin.readLineSync()!);
  int n2=int.parse(stdin.readLineSync()!);
  print('Choose operation + , - , / , *');
  String process=(stdin.readLineSync()!);

    //String process=(stdin.readLineSync()!);

  
  switch (process){
      case '+':
 print(sum(n1, n2));
 break;
  case '-':
  print(dif(n1, n2));
  break;
  case '*':
  print(mult(n1, n2));
  break;
  case '/' :
  print(div(n1, n2));
  break;
  
  default:
  print('try again');
  break;

  }


  
}

int sum(int n1,int n2){
  return n1+n2;
}

int dif(int n1,int n2){
  return n1-n2;
}

double div(int n1,int n2){
  return n1/n2;
}

int mult(int n1,int n2){
  return n1*n2;
}