class Cake {
  List<String> model = [];

  String? nameShop;

  String toString() => 'Name Shop is ${nameShop} Model is ${model}' ;
}

void main(List<String> args) {
  Cake myCake = Cake();
  var yourcake = Cake();

  print(myCake.nameShop);
  print(myCake.model);

  myCake.nameShop = 'Cakie Shop';
  myCake.model.addAll(['RX-78','Hi-Nu','Freedom']);
  
  print(myCake.nameShop);
  print(myCake.model);

  print(myCake);
  
  yourcake.nameShop = 'CoCoaCake shop' ;
  yourcake.model.addAll(['cake4','cake5','cake6']);
  print(yourcake);
}