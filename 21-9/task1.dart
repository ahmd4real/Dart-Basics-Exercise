import 'dart:io';

Map<String, dynamic> removeByValue(Map<String, dynamic> myMap) {
  return myMap;
}

void main() {
  String con;
  Map<String, dynamic> myMap = {};
  do {
    print(
        'Choose operation \n1-Add Value\n2-Remove Value\n3-Update Value\n4-Show Value\n5-Search Value');
    int process = int.parse(stdin.readLineSync()!);
    switch (process) {
      case 1:
        print('Enter number of Items ');
        int n = int.parse(stdin.readLineSync()!);
        print('Enter Keys And values ');

        for (int i = 0; i < n; i++) {
          print('Enter Key');
          String key = (stdin.readLineSync()!);
          print('Enter Value');
          int value = int.parse(stdin.readLineSync()!);
          myMap[key] = (value);
        }

        break;

      case 2:
        if (!(myMap.isEmpty)) {
          print('Choose form "a" or "b" \na)remove by value\nb)remove by key');
          String x = stdin.readLineSync()!;
          if (x == 'a') {
            print('Enter value');
            int n = int.parse(stdin.readLineSync()!);
            String keytoRemove='';
            if(myMap.containsValue(n))
                { myMap.forEach((key, value) {
                    if (value == n) {
                      keytoRemove=key;
                      }
                  });
                  myMap.remove(keytoRemove);
                }else print('This value not in map');
          } else if (x == 'b') {
            print('Enter key');
            String n = (stdin.readLineSync()!);

            myMap.containsKey(n)
                ? myMap.remove(n)
                : print('key out of Range');
          }
        } else
          print('The map is empty');
        break;

      case 3:
        print('Enter Old value');
        int n = int.parse(stdin.readLineSync()!);
        if (myMap.containsValue(n)) {
          String keyUpdate='';
          print('Enter new value');
          int x = int.parse(stdin.readLineSync()!);
          myMap.forEach((key, value) {
                    if (value == n) {
                      keyUpdate=key;
                      }
                  });
                  myMap[keyUpdate]=x;
        } else
          ('This value not in map');

        break;

      case 4:
        if (!(myMap.isEmpty)) {
          print('Values you enterd');
          myMap.forEach((key, element) {
            print('$element');
          });
        } else
          print('The map is empty');

        break;

      case 5:
        if (!(myMap.isEmpty)) {
          print('Choose form "a" or "b" \na)found or not found \nb)get key');
          String x = stdin.readLineSync()!;
          if (x == 'a') {
            print('Enter value');
            int n = int.parse(stdin.readLineSync()!);

            myMap.containsValue(n) ? print('found') : print('not found');
          } else if (x == 'b') {
            print('Enter value');
            int n = int.parse(stdin.readLineSync()!);

            myMap.containsValue(n)
                ? 
                myMap.forEach((key, value) {
                    if (value == n) {
                     print('key=${key}');
                    }
                    
                  })
                : print('not found');
          }
        } else
          print('The map is empty');

        break;

      default:
        print('try again');
        break;
    }
    print('enter "yes" if you want to continue or "no" if wanna to exit');
    con = stdin.readLineSync()!;
    con = con.toLowerCase();
  } while (con == 'yes');
}
