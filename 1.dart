//นายเอกรัฐ ทะยะ ปสสท.3 3651051541127
import 'dart:math';

abstract class Shape{
  void calculateArea();
}

abstract class Drawable{
  void draw();
}

class Circle extends Shape implements Drawable{
  double radius = 0;

  Circle(this.radius);
  double calculateArea(){
    var sum = pi * pow(radius, 2);
    print('Area of circle: ${sum.toStringAsFixed(2)}');
    return sum;
  } 
   
  @override
  void draw() {
    print('Drawing Circle with radius: $radius');
  }
}

class Rectangle extends Shape implements Drawable{
  double width = 0;
  double height = 0;

  Rectangle(this.width, this.height);
  
  @override
  double calculateArea(){
    var sum = width * height ;
    print('Area of rectangle: $sum');
    return sum;
  }

  @override
  void draw() {
    print('Drawing Rectangle with width: $width and height: $height');
  }
}

void main(List<String> args) {
  var circle = Circle(5);
  var rectangle = Rectangle(10, 20);
  circle.calculateArea();
  circle.draw();
  rectangle.calculateArea();
  rectangle.draw();
}