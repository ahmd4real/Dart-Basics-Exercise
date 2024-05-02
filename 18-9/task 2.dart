import 'dart:io';
void main(){
  
 
  int ans;
  String con;
  do{
  print('Choose operation \n1-fcat\n2-sum\n3-power');
  int process=int.parse(stdin.readLineSync()!);
  switch (process){
    case 1:
    print('Enter Number');
  int n=int.parse(stdin.readLineSync()!);
    ans=1;
   for (int i=1;i<=n;i++){
    ans*=i;
   }
   print(ans);

  break;
  case 2:
  print('Enter Number');
  int n=int.parse(stdin.readLineSync()!);
  ans=0;
  for (int i=1;i<=n;i++){
    ans+=i;
   }
   print(ans);
 
  break;
  case 3:
  print('Enter Number');
  int n=int.parse(stdin.readLineSync()!);
  ans=1;
  print('Enter power');
  int power=int.parse(stdin.readLineSync()!);
  for (int i=1;i<=power;i++){
    ans*=n;
   }
   print(ans);
 
  break;
  
  default:
  print('try again');
  break;

  }
  print('enter "yes" if you want to continue or "no" if wanna to exit');
  con=stdin.readLineSync()!;
  con=con.toLowerCase();
  }while(con=='yes');
  
}