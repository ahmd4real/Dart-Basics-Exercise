

import 'circle.dart';
import 'rectangle.dart';

main(){
  Rectangle r=Rectangle.optionalwithcolor(color: 
  'red',filled: true,length: 10,width: 2);
  
  print(r.toString());
print('--------------------------');
  Circle c=Circle.optionalwithcolor(color: 'blue',filled: false,radius: 10);
  print(c.toString());
}