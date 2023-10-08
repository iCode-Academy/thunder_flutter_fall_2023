abstract class Account {
  int accountNumber;
  double balance;
  Account(this.accountNumber, this.balance);

  double desposit(double amount);
  double withdraw(double amount);
  String typeOfAccount();
}

class SavingsAccount extends Account{
  SavingsAccount(int accountNumber, double balance) : super(accountNumber, balance);

  @override
  double desposit(double amount) {
    balance += amount;
    return balance;
  }

  @override
  double withdraw(double amount) {
    if (balance - amount < 0) {
      print("Insufficient funds");
      return balance;
    }
    balance -= amount;
    return balance;
  }

  @override
  String typeOfAccount() {
    return "Savings Account";
  }
}

class CurrentAccount extends Account {
  CurrentAccount(int accountNumber, double balance) : super(accountNumber, balance);

  @override
  double desposit(double amount) {
    balance += amount;
    return balance;
  }

  @override
  double withdraw(double amount) {
    if (balance - amount < 0) {
      print("Insufficient funds");
      return balance;
    }
    balance -= amount;
    return balance;
  }

  @override
  String typeOfAccount() {
    return "Current Account";
  }
}

void main(){
  final SavingsAccount savingsAccount = SavingsAccount(123456789, 1000);
  print("Savings Account balance: ${savingsAccount.balance}");  // Should print "Savings Account balance: 1000"
  savingsAccount.desposit(500);
  print("Savings Account balance: ${savingsAccount.balance}");  // Should print "Savings Account balance: 1500"
  savingsAccount.withdraw(2000);
  print("Savings Account balance: ${savingsAccount.balance}");  // Should print "Savings Account balance: 1500"
  savingsAccount.withdraw(1000);
  print("Savings Account balance: ${savingsAccount.balance}");  // Should print "Savings Account balance: 500"
  print("Savings Account type: ${savingsAccount.typeOfAccount()}");  // Should print "Savings Account type: Savings Account"

  final CurrentAccount currentAccount = CurrentAccount(987654321, 1000);
  print("Current Account balance: ${currentAccount.balance}");  // Should print "Current Account balance: 1000"
  currentAccount.desposit(500);
  print("Current Account balance: ${currentAccount.balance}");  // Should print "Current Account balance: 1500"
  currentAccount.withdraw(2000);
  print("Current Account balance: ${currentAccount.balance}");  // Should print "Current Account balance: 1500"
  currentAccount.withdraw(1000);
  print("Current Account balance: ${currentAccount.balance}");  // Should print "Current Account balance: 500"
  print("Current Account type: ${currentAccount.typeOfAccount()}");  // Should print "Current Account type: Current Account"
}