abstract class Printable{
  void printData();
}

class Person implements Printable{
  String? name ;
  int? age ;

  Person(this.name, this.age);
  
  @override
  void printData() {
    print('Name: $name, Age: $age');
  }

}

class Product implements Printable{
  String? namePro ;
  double? price ;

  Product(this.namePro, this.price);
  
  @override
  void printData() {
    print('Name: $namePro, Price: $price');
  }

}

void printItem<T extends Printable>(T item){
  item.printData();
}

void main(List<String> args) {
  Person person = Person('john', 25);
  Product product = Product('Laptop', 1500);
  printItem(person);
  printItem(product);
}