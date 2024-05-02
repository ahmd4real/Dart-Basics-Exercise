import 'dart:io';

void main() {
  List<Map<String, dynamic>> Students = [];
  int code, age;
  String name;
  double totalDeg;
  print('Enter number of Students ');
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print('Enter student code');
    code = int.parse(stdin.readLineSync()!);
    print('Enter studet name');
    name = stdin.readLineSync()!;
    print('Enter student age');
    age = int.parse(stdin.readLineSync()!);

    print('Enter student degrees');
    print('Enter Number of Materials First');
    int x = int.parse(stdin.readLineSync()!);

    List<double> degress = [];
    print('Add Degrees');

    for (int i = 0; i < x; i++) {
      double element = double.parse(stdin.readLineSync()!);
      degress.add(element);
    }
    ;

    Students.add({
      'code': code,
      'name': name,
      'age': age,
      'degrees': degress,
    });
  }
  List<double> tempDegrees = [];
  print('\nStudents Info\n---------------------------------------------');
  for (var student in Students) {
    totalDeg = 0.0;
    print('Code: ${student['code']}');
    print('Name: ${student['name']}');
    print('Age: ${student['age']}');
    tempDegrees = student['degrees'];
    tempDegrees.forEach(
      (element) {
        //stdout.write('$element ');
        totalDeg += element;
      },
    );
    double per = (totalDeg / (tempDegrees.length * 50)) * 100;
    print('Degrees: ${student['degrees']}');
    print('Total: ${totalDeg}');
    print('Percent: ${per}');
    if (per >= 50 && per <= 65)
      print('Pass');
    else if (per >= 66 && per <= 75)
      print('Good');
    else if (per >= 76 && per < 85)
      print('Very good');
    else if (per >= 85 && per <= 100)
      print('Excellent');
    else
      print('Failed');
    print('\n');
  }

  //print(Students);
}
