import 'dart:io';

void main(){
  int n=int.parse(stdin.readLineSync()!);
  int ans=1; //int temp=n;
  //int count=n - 1;
  if (n==1 || n==0)
  ans=1;
  else
  while(n>1){
    ans*=n;
    n--;
  }

  print(ans);
  

}