import 'dart:io';

void main() {
  String con;
  List<int> myList = [];
  do {
    print(
        'Choose operation \n1-Add Value\n2-Remove Value\n3-Update Value\n4-Show Value\n5-Search Value');
    int process = int.parse(stdin.readLineSync()!);
    switch (process) {
      case 1:
        print('Enter number of values ');
        int n = int.parse(stdin.readLineSync()!);
        print('Enter values');
        for (int i = 0; i < n; i++) {
          int data = int.parse(stdin.readLineSync()!);
          myList.add(data);
        }

        break;

      case 2:
      if (!(myList.isEmpty)){
        print('Choose form "a" or "b" \na)remove by value\nb)remove by index');
        String x = stdin.readLineSync()!;
        if (x == 'a') {
          print('Enter value');
          int n = int.parse(stdin.readLineSync()!);
          myList.contains(n)
              ? myList.remove(n)
              : print('This value not in List');
        } else if (x == 'b') {
          print('Enter index');
          int n = int.parse(stdin.readLineSync()!);

          (n >= 0 && n <= myList.length)
              ? myList.remove(myList[n])
              : print('index out of Range');
        }}else print('The list is empty');
        break;

      case 3:
        print('Enter Old value');
        int n = int.parse(stdin.readLineSync()!);
        if (myList.contains(n)) {
          print('Enter new value');
          int x = int.parse(stdin.readLineSync()!);
          myList [myList.indexOf(n)]=x ;
        } else
          ('This value not in List');

        break;

      case 4:
      if (!(myList.isEmpty)){
        print('Values you enterd');
        for (int i=0;i<myList.length;i++){
          print(myList[i]);
        }}
        else print('The list is empty');

        break;

      case 5:
      if (!(myList.isEmpty)){
        print('Choose form "a" or "b" \na)found or not found \nb)get index');
        String x = stdin.readLineSync()!;
        if (x == 'a') {
          print('Enter value');
          int n = int.parse(stdin.readLineSync()!);

          myList.contains(n) ? print('found') : print('not found');
        } else if (x == 'b') {
          print('Enter value');
          int n = int.parse(stdin.readLineSync()!);

          myList.contains(n)
              ? print('index=${myList.indexOf(n)}')
              : print('not found');
        }}
        else print('The list is empty');

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
