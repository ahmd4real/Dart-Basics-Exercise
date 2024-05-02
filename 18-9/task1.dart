import 'dart:io';


void main(){
  print('enter "m" if you married or "s" if you single');
  String status=stdin.readLineSync()!;
  
  status=status.toLowerCase();
  double salary=0;
  if (status=='m'){
    print('Enter number of children');
    int n=int.parse(stdin.readLineSync()!);
    if (n==0 && n<=3)
    salary=1200+n*150;
    else if (n>=4 && n<=6)
    salary=1800+n*250;
    else
    salary=2000+n*300;

  }else if (status=='s'){
    print('Enter number of years');
    int n=int.parse(stdin.readLineSync()!);
    if (n==0 && n<=5)
    salary=1000+n*200;
    else if (n>=6 && n<=10)
    salary=1500+n*400;
    else
    salary=2000+n*600;

  }

  print('Salary  = $salary');

}