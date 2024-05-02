import 'product.dart';

class Cart{
  List<Product>purchase=[];

  void addProductCart(Product p){
  purchase.add(p);
 }

 void deleteProductCart(String name){
    int index=-1;
  for (int i=0;i<purchase.length;i++){
    if(purchase[i].name==name){
    index=i; 
    break;
    }
  }
  if (index==-1) print('Product not found');
  else{
    purchase.removeAt(index);
  }

 }

 double totalPrice(){
  List<double>totalList=[];
  purchase.forEach((element) {
    double inList=element.price*element.quantity;
    totalList.add(inList);
  });
   double totalPrice=0.0;
  totalList.forEach((element) {
    totalPrice+=element;
  });

  return totalPrice;

 }

 double totalAfterDis(){
   List<double>totalList=[];
  purchase.forEach((element) {
    double inList=(element.price-((element.price*((element.discount/100)))))*element.quantity;
    totalList.add(inList);
  });
   double totalPrice=0.0;
  totalList.forEach((element) {
    totalPrice+=element;
  });
  return totalPrice;
  
 }

  void showProWeb(){
    print('Products');
    purchase.forEach((element) {
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