import 'point2d.dart';
import 'point3d.dart';

main(){
  Point2D obj1=Point2D.optional(x: 10,y: 20);
  Point2D obj2=Point2D();
  obj2.setXY(x: 99,y: 88);
  print('object 1 : ${obj1.toString()}');
  print('object 2 : ${obj2.getXY()}');
  
  print ('3D Objects');
  Point3D obj1_3d=Point3D.optional(x:201,y: 
  203 ,z: 101);
  Point3D obj2_3d=Point3D();
  obj2_3d.setXYZ(x: 1088,y: 1099, z: 2022);
  print('object 1 : ${obj1_3d.toString()}');
  print('object 2 : ${obj2_3d.getXYZ()}');
  
}