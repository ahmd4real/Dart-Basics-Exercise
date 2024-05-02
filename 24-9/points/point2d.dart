class Point2D {
  late double _x;
  late double _y;

  Point2D.optional({double x = 0.0, double y = 0.0}) {
    _x = x;
    _y = y;
  }
  Point2D() {
    _x = 0.0;
    _y = 0.0;
  }
  double getX() {
    return _x;
  }
  double getY() {
    return _x;
  }
  void setX({double x = 0}) {
    _x = x;
  }
  void setY({double y = 0}) {
    _y = y;
  }
  void setXY({double x = 0.0, double y = 0.0}) {
    _y = y;
    _x = x;
  }
  Map<String, double> getXY() {
    Map<String, double> mp = {};
    mp['x'] = _x;
    mp['y'] = _y;
    return mp;
  }

  String toString(){
    String s;
    s='($_x,$_y)';
    return s;
  }

}
