abstract class Shape{
  late String _color;
  late bool _filled;

  Shape(){_color='';_filled=false;}

  Shape.optional({String color='', bool filled=false}) {
    _color = color;
    _filled = filled;
  }

  String getColor(){
    return _color;
  }

  void setColor(String color){
    _color=color;
  }

  bool isFilled(){
    return _filled;
  }

  void setFilled(bool filled){
    _filled=filled;
  }

  double getArea();
  double getPerimeter();
  String toString();


}