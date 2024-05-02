import 'shape.dart';

class Circle extends Shape{
  late double _radius;
 

  Circle():super(){
    _radius=0; 

  }

  Circle.optional({ double radius=0}){
    
    _radius=radius;
  }

  Circle.optionalwithcolor({double radius=0, double width=0 ,String color='',bool filled=false,}):super.optional(color: color,filled: filled){
    
    _radius=radius;
  }

  void set({double =0}){
    

  }
  void setRadius({double radius=0}){
    _radius=radius;

  }

  
  double getRadius(){
    return _radius;
  }
  @override
  double getArea() {
    // TODO: implement getArea
    return (3.14*_radius*_radius);
  }
  @override
  double getPerimeter() {
    // TODO: implement getPerimeter
    return (2*3.14*_radius);
  }

  @override
  String toString() {
    // TODO: implement toString
    
    return  'Circle Data:\n'
        'Radius: $_radius\n'
        
        'Color: ${getColor()}\n'
        'Filled: ${isFilled()}\n'
        'Area: ${getArea()}\n'
        'Perimeter: ${getPerimeter()}';
  }


 


}