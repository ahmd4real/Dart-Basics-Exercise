import 'dart:io';

import 'complex.dart';

main(){
  Complex x1=Complex(r: 10,rl: 20);
  Complex x2=Complex(r: 5,rl: 2);

  //Complex ans=Complex();
  
  print('choose operation + , - , *');
  String ch=stdin.readLineSync()!;

  if (ch=='+'){
    print('sum: r=${x1.sum(x2).r} rl=${x1.sum(x2).rl}');
  }else if (ch=='-'){
    print('sub: r=${x1.sub(x2).r} rl=${x1.sub(x2).rl}');

  }else if (ch=='*'){
    print('mul: r=${x1.mul(x2).r} rl=${x1.mul(x2).rl}');
  }
}