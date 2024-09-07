class BankAccount{
  double? _balance;
  String? _name;

  BankAccount(this._balance,this._name);

  String get name => _name!;
  double get balance => _balance!;
  set balance(double balance) => _balance = balance ;

  void setBalance(double bal){
    this._balance = bal ;
  }

  void depposit(double amount){
    _balance = balance + amount ;
    print('คุณฝากเงิน $amount บาท ตอนนี้คุณมีเงินคงเหลือ $_balance บาท');
  }

  void withdraw(double amount){
    _balance = balance - amount ;
    print('คุณถอนเงิน $amount บาท ตอนนี้คุณมีเงินคงเหลือ $_balance บาท');
  }

  void showbalance(){
    print('ชื่อบัญชี คือ $_name| ยอดเงินคงเหลือ = $_balance');
  }

}

class SavingAccount extends BankAccount{
  double _interestRate ;

  SavingAccount(balance,this._interestRate,name):super(balance,name);


  void addinterest(){
    var inter = balance * _interestRate/100 ;
    _balance = inter + balance ;
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