import 'dart:io';

import 'cart.dart';
import 'product.dart';
import 'shopWebsite.dart';
import 'visitor.dart';


void main() {
  String again;

  Website w=Website();
  Product p=Product();
  Visitor v=Visitor();
  Cart c=Cart();


do{
  

  print('''Choose from 1 to 11:
  1- Add visitor
  2- Add product to Website
  3- Add Product to Cart
  4- Delete Product Website
  5- Delete Product Cart
  6- Search Product By name
  7- Search Product By Price
  8- Show Total Products on websites
  9- Show Total Price
  10- Show Total Price After discount
  11- Show Total products Purched
  ''');

  int ch = int.parse(stdin.readLineSync()!);

  if (ch == 1) {

    // Add visitor
    print('Enter name ,E-mail');
    String name=stdin.readLineSync()!;
    String email=stdin.readLineSync()!;
    w.addVisitor(name, email);
    
  } else if (ch == 2) {
    // Add product to Website
    print('Enter name,decripiton,discount,price,quantity');
    p=Product();
    p.name=stdin.readLineSync()!;
    p.des=stdin.readLineSync()!;
    p.discount=double.parse(stdin.readLineSync()!);
    p.price=double.parse(stdin.readLineSync()!);
    p.quantity=double.parse(stdin.readLineSync()!);
    w.addProductweb(p);
    
    
  } else if (ch == 3) {
    
    // Add Product to Cart
      print('Enter name,decripiton,discount,price,quantity');
    p=Product();
    p.name=stdin.readLineSync()!;
    p.des=stdin.readLineSync()!;
    p.discount=double.parse(stdin.readLineSync()!);
    p.price=double.parse(stdin.readLineSync()!);
    p.quantity=double.parse(stdin.readLineSync()!);
    c.addProductCart(p);
    
 
    
  } else if (ch == 4) {
    
    // Delete Product Website
    print('Enter name');
    String name=stdin.readLineSync()!;
    w.deleteProductWeb(name);
    

  } else if (ch == 5) {
    
    // Delete Product Cart
    print('Enter name');
    String name=stdin.readLineSync()!;
    c.deleteProductCart(name);
    
  } else if (ch == 6) {

    // Search Product By name
    print('Enter name');
    String name=stdin.readLineSync()!;
    w.searchProductWebByName(name);
   
  } else if (ch == 7) {

    // Search Product By price
    print('Enter Price');
   double price=double.parse(stdin.readLineSync()!);
   w.searchProductWebByPrice(price);
    
  } else if (ch == 8) {
    // Show Total Products on websites
    w.showProWeb();
   
  } else if (ch == 9) {
    // Show Total Price
    

    print('Total Prices');
    print(c.totalPrice());
    
  } else if (ch == 10) {
    // Show Total Price After discount

    print('Total Prices After discounts');
    print(c.totalAfterDis());
    
  } else if (ch == 11) {
    // Show Total products Purched
    c.showProWeb();
  
  } else if (ch == 12) {
   
  } else {
    print('Invalid choice. Please choose a number from 1 to 11.');
  }
  print('if you wanna continue press 1 and 0 to exit');
  again=stdin.readLineSync()!;

}while(again=='1');
}



