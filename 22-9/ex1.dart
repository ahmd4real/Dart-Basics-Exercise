import 'dart:io';

void main(){
  int x=2,y=3,z=5;

  double re1=(fact(x)*power(x,y)+sum(z))/(power(z, y)*fact(y));
  double re2=(power(x, y)*power(x, z))/(sum(x)*sum(y)+fact(z)*fact(y));

  print('First eq: $re1\nSecond eq: $re2');

}

int fact(int n){
  int ans=1;
  //ans=1;
   for (int i=1;i<=n;i++){
    ans*=i;
   }
   return ans;

}

int sum(int n){
  int ans=0;
  for (int i=1;i<=n;i++){
    ans+=i;
   }
   return ans;

}

int power(int x,int y){

  int ans=1;
  for (int i=1;i<=y;i++){
    ans*=x;
   }
   return ans;

}
