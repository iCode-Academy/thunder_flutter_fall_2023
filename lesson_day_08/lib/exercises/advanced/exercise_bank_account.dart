class BankAccount {
  String accountNumber;
  double balance;

  BankAccount(this.accountNumber, [this.balance = 0.0]);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: $amount. New Balance: $balance");
  }

  bool withdraw(double amount) {
    if (amount > balance) {
      print("Insufficient funds!");
      return false;
    }
    balance -= amount;
    print("Withdrew: $amount. New Balance: $balance");
    return true;
  }
}


void main(){
  // 3 tests here
  print('Exercise Bank Account Class');
  final BankAccount bankAccount = BankAccount('123-456-789');
  bankAccount.deposit(100.0);
  bankAccount.withdraw(50.0);

  final BankAccount bankAccount2 = BankAccount('987-654-321', 1000.0);
  bankAccount2.deposit(100.0);
  bankAccount2.withdraw(50.0);
  bankAccount2.withdraw(1000.0);


  final BankAccount bankAccount3 = BankAccount('123-456-789', 100.0);
  bankAccount3.deposit(100.0);
  bankAccount3.withdraw(50.0);
  bankAccount3.withdraw(1000.0);

}
