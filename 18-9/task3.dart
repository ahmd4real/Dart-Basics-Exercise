import 'dart:io';
void main(){
 
  double s=26.25,r=30.5,t=59.75;
  //int ans;
  String con;
  int riceunits=0,teaUnits=0,sugarUnits=0;
  do{
   print('choose product \n1-sugar 26.25\$\n2-rice 30.5\$\n3-tea 59.75\$');
  int process=int.parse(stdin.readLineSync()!);
  switch (process){
    case 1:
    print('Enter Number of units you need');
    int n=int.parse(stdin.readLineSync()!);
    sugarUnits+=n;
  break;
  case 2:
  print('Enter Number of units you need');
  int n=int.parse(stdin.readLineSync()!);
  riceunits+=n;
  break;
  case 3:
  print('Enter Number of units you need');
  int n=int.parse(stdin.readLineSync()!);
  teaUnits+=n;
  break;
  default:
  print('try again');
  break;

  }
  print('enter "yes" if you want to continue or "no" if wanna to exit');
  con=stdin.readLineSync()!;
  con=con.toLowerCase();
  }while(con=='yes');
  print('total tea=$teaUnits\ntotal rice=$riceunits\ntotal sugar=$sugarUnits');
  double totalPrice=(teaUnits*t+sugarUnits*s+riceunits*r);
  print('Total Price=  $totalPrice' );
  if (totalPrice>500){
    double afterdis=(totalPrice-(totalPrice*.15));
    print('After Discount= $afterdis');

  }

}