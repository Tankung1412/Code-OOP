//นายเอกรัฐ ทะยะ ปสสท.3  รหัส 3651051541127
class BankAccount{
  double? _balance;
  String? _name;

  BankAccount(this._balance,this._name);

  String get name => _name!;
  double get bal => _balance!;
  set bal(double balance) => _balance = bal ;

  void depposit(double amount){
    _balance = bal + amount ;
    print('คุณฝากเงิน $amount บาท ตอนนี้คุณมีเงินคงเหลือ $_balance บาท');
  }

  void withdraw(double amount){
    _balance = bal - amount ;
    print('คุณถอนเงิน $amount บาท ตอนนี้คุณมีเงินคงเหลือ $_balance บาท');
  }

  void showbalance(){
    print('ชื่อบัญชี คือ $_name| ยอดเงินคงเหลือ = $_balance');
  }

}

class SavingAccount extends BankAccount{
  double _interestRate ;

  SavingAccount(bal,this._interestRate,name):super(bal,name);


  void addinterest(){
    var inter = bal * _interestRate/100 ;
    _balance = inter + bal ;
    print('ดอกเบี้ย $inter ตอนนี้คุณมีเงินคงเหลือ $_balance บาท');
  }
}

void main(List<String> args) {
  var bank = SavingAccount(2000.0, 0.25, 'Ben');
  bank.depposit(400);
  bank.withdraw(100);
  bank.addinterest();
  bank.showbalance();
}