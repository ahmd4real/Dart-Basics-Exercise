import 'dart:io';

import 'car.dart';

main() {
  List<Car> cars = [];

  print('Enter Number of Cars');
  int n = int.parse(stdin.readLineSync()!);
 

  for (int i = 0; i < n; i++) {
     Car c = Car(0, 'model', 'color', 0.0);
    c.getData();
    cars.add(c);
  }

  List<double> prices = [];

  for (int i = 0; i < n; i++) {
    prices.add(cars[i].price);
  }
  double total = 0.0;
  prices.forEach((element) {
    total += element;
  });

  int mxIndex = 0, mnIndex = 0;
  double max = prices[0], min = prices[0];
  for (var i = 0; i < prices.length; i++) {
    if (prices[i] > max) {
      max = prices[i];
      mxIndex = i;
    }

    if (prices[i] < min) {
      min = prices[i];
      mnIndex = i;
    }
  }
  print('\nCars you Entered\n--------------------');
  for (int i = 0; i < n; i++) {
    cars[i].printObj();
    print('--------------------------------');
  }

  print('Total prices $total \$');

  print(
      'Max Price =$max'); cars[mxIndex].printObj();
      print('Min Price =$min'); cars[mnIndex].printObj();
}
