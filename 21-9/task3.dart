import 'dart:io';

void main(){

  List<int>l=[];
  getList(l);
  ShowList(l);
  print('sum=${sumList(l)}');
  print('AVG=${avg(l)}');
  print(MaxandMinList(l));


}

void getList(List<int>l){
   print('Enter number of values ');
        int n = int.parse(stdin.readLineSync()!);
        print('Enter value');
        for (int i = 0; i < n; i++) {
          int data = int.parse(stdin.readLineSync()!);
          l.add(data);
        }
} 

void ShowList(List<int>l){
  l.forEach((element) {print(element);});
}

int sumList(List<int>l){
  int sum=0;
  l.forEach((element) {sum+=element;});
  return sum;
}

double avg(List<int>l){
  double ans=sumList(l)/l.length;
  return ans;
}


Map MaxandMinList(List<int>l){
  int max=l[0],min=l[0];
  for (var i = 0; i < l.length; i++) {
      
    // Checking for largest value in the list
    if (l[i] > max) {
      max = l[i];
    }
      
    // Checking for smallest value in the list
    if (l[i] < min) {
      min = l[i];
    }
  }
  Map <String,int>mp={};
  mp['min']=min;
  mp['max']=max;

  return mp;

}