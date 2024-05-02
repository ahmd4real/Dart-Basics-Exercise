
import 'dart:io';

void main(){
  //first Pattern
  int stars=7;
 for (int i=4;i>0;i--){
  for (int k=stars;k>0;k--){
    stdout.write('*');
    
  }
  print('');
  stars-=2;
 }

 //sceond Pattern 
  int rows = 4; 

  for (int i=0;i<rows;i++){
    for (int k=0;k<rows-i;k++) {
      stdout.write("  ");
    }
    for (int k = 0; k < 2 * i + 1; k++) {
      stdout.write("* ");
    }
    print('');
  }
}