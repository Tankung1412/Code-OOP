enum TransportationMode {Car, Bicycle, Train}

class Transport{
  double? _speed;
  TransportationMode? type;

  Transport(this._speed, this.type);

  double get speed => _speed! ;

  void show(){
    print('Speed of $type: $_speed km/h');
  }
}

void main(List<String> args) {
  var type1 = Transport(100, TransportationMode.Car);
  var type2 = Transport(20, TransportationMode.Bicycle);
  var type3 = Transport(150, TransportationMode.Train);
  type1.show();
  type2.show();
  type3.show();
}