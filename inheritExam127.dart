abstract class Greeting{
  void thai();
  void english();
  void japan();
}

abstract class NotYetGreet implements Greeting{
  void thai() {
    print('Arun sawad');
  }
  void english() {
    print('Good morning');
  } 
}

class Greet extends NotYetGreet{
  void japan(){
    print('Ohiyo');
  }
}

void main(List<String> args) {
  var greet = Greet();
  greet.thai();
  greet.english();
  greet.japan();
}