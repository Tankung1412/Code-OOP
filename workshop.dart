//นายเอกรัฐ ทะยะ  ปสสท.3  รหัส 3651051541127
class Mammal {
  String? _species;

  Mammal(this._species);

  String get species => _species!;

  String make_sound() => '-Grrrr';
}

class Dog extends Mammal {
  Dog(super._species);

  String make_sound() => '-Woof! Woof!';
}

class Cat extends Mammal {
  Cat(super._species);
  String make_sound() => '-Meow';
}

class Cow extends Mammal {
  Cow(super._species);
  String make_sound() => '-Mo Mo';
}

void main(List<String> args) {
  var mammal = Mammal('Regular');
  var dog = Dog('Dog');
  var cat = Cat('Cat');
  var cow = Cow('Cow');

  print('Species: ${mammal.species}, Animal sound: ${mammal.make_sound()}');
  print('Species: ${dog.species}, Animal sound: ${dog.make_sound()}');
  print('Species: ${cat.species}, Animal sound: ${cat.make_sound()}');
  print('Species: ${cow.species}, Animal sound: ${cow.make_sound()}');
}
