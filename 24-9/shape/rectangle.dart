import 'shape.dart';

class Rectangle extends Shape{
  late double _width;
  late double _length;

  Rectangle():super(){
    _width=0; _length=0;

  }

  Rectangle.optional({double length=0, double width=0}){
    _length=length;
    _width=width;
  }

  Rectangle.optionalwithcolor({double length=0, double width=0 ,String color='',bool filled=false,}):super.optional(color: color,filled: filled){
    _length=length;
    _width=width;
  }

  void setLength({double length=0}){
    _length=length;

  }
  void setWidth({double width=0}){
    _width=width;

  }

  double getWidth(){
    return _width;
  }
  double getLength(){
    return _length;
  }
  @override
  double getArea() {
    // TODO: implement getArea
    return _width*_length;
  }
  @override
  double getPerimeter() {
    // TODO: implement getPerimeter
    return (_length+_width)*2;
  }

  @override
  String toString() {
    // TODO: implement toString
    return  'Rectangle Data:\n'
        'Length: $_length\n'
        'Width: $_width\n'
        'Color: ${getColor()}\n'
        'Filled: ${isFilled()}\n'
        'Area: ${getArea()}\n'
        'Perimeter: ${getPerimeter()}';
  }


 


}