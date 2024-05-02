import 'point2d.dart';

class Point3D extends Point2D {
  late double _z;

  Point3D.optional({double x=0.0,double y=0.0,double z = 0.0})
      : super.optional(x: x, y: y) {
    _z = z;
  }
  Point3D() : super() {
    _z = 0.0;
  }

  double getZ() {
    return _z;
  }

  void setZ({double z = 0}) {
    _z = z;
  }

  void setXYZ({double x=0.0,double y=0.0,double z = 0.0}) {
  super.setXY(x:x,y:y);
    _z = z;
  }

  Map<String, double> getXYZ() {
    Map<String, double> mp = {};
    mp = super.getXY();
    mp['z'] = _z;
    return mp;
  }

  String toString() {
    String s;
     
    s=super.toString();
    //int x=s.indexOf(')');
    s+='$_z';
    return s;
  }
}
