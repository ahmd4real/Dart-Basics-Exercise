import 'product.dart';
import 'visitor.dart';

class Website {
  List<Product> productsInWebsite = [];
  List<Visitor> visitors = [];

  void addVisitor(String name, String email) {
    Visitor v = Visitor();
    v.name = name;
    v.email = email;

    visitors.add(v);
  }

  void addProductweb(Product p) {
    productsInWebsite.add(p);
  }

  void deleteProductWeb(String name) {
    int index = -1;
    for (int i = 0; i < productsInWebsite.length; i++) {
      if (productsInWebsite[i].name == name) {
        index = i;
        break;
      }
    }
    if (index == -1)
      print('Product not found');
    else {
      productsInWebsite.removeAt(index);
    }
  }

  void searchProductWebByName(String name) {
    int index = -1;
    for (int i = 0; i < productsInWebsite.length; i++) {
      if (productsInWebsite[i].name == name) {
        index = i;
        break;
      }
    }
    if (index == -1)
      print('Product not found');
    else {
      print('Index= $index ');
      var element=productsInWebsite[index];
      print('''
  name=${element.name}
  description=${element.des}
  discount=${element.discount}
  price=${element.price}
  quantity=${element.quantity}
  ----------------------------''');
    }
  }

  void searchProductWebByPrice(double price) {
    List<Product> productSFound = [];
    int index = -1;
    for (int i = 0; i < productsInWebsite.length; i++) {
      if (productsInWebsite[i].price == price) {
        index = i;
        productSFound.add(productsInWebsite[index]);
        //break;
      }
    }
    if (index == -1)
      print('Product not found');
    else {
      //productSFound.add(productsInWebsite[index]);
    
    print('Products');
    productSFound.forEach((element) {
      print('''
  name=${element.name}
  description=${element.des}
  discount=${element.discount}
  price=${element.price}
  quantity=${element.quantity}
  ----------------------------''');
    });}
  }

  void showProWeb(){
    print('Products');
    productsInWebsite.forEach((element) {
      print('''
  name=${element.name}
  description=${element.des}
  discount=${element.discount}
  price=${element.price}
  quantity=${element.quantity}
  ----------------------------''');
    });

  }
}
