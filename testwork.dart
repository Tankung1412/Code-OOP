import 'work.dart';
void main(List<String> args) {
  var laptop = Laptop(1576428425, 'Acer', 16) ;
  laptop.display();
  print('\n');
  var house = House();
  house.display();
  print('\n');
  var car1 = Car('Benz', 'Silver');
  car1.display();
  car1.setPrice(1556548);
  car1.display();
  print('\n');
  var car2 = Car('Mazda', 'black',1300000);
  car2.display();
}