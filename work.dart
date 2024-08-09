class Laptop{
  int? id;
  String? name;
  double? ram;

  Laptop(this.id, this.name, this.ram);
  void display(){
    print('Laptop id = $id');
    print('Name = $name');
    print('Ram = $ram');
  }
}

class House{
  int? id;
  String? name;
  double? price;

  House({this.id = 215689, this.name = 'บ้านแสนศิริ', this.price = 20000000});
  void display(){
    print('House id = $id');
    print('House name = $name');
    print('Price = $price');
  }
}

class Car{
  String? brand;
  String? color;
  double? price;

  Car(this.brand, this.color, [this.price]);
  void setPrice(double price){
    this.price = price ;
  }
  void display(){
    print('Brand car = $brand');
    print('Color car = $color');
    print('Price = $price');
  }
}