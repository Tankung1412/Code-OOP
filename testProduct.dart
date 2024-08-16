import 'product.dart';

void main(List<String> args) {
  var myProduct = Product();
  myProduct.id = 1234;
  myProduct.name = 'YumYum';
  myProduct.price = 50;
  myProduct.balance = 10;

  print('id: ${myProduct.id}') ;
  print('name: ${myProduct.name}') ;
  print('price: ${myProduct.price}') ;
  print('balance: ${myProduct.balance}') ;

}