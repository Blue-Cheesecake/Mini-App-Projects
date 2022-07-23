import 'package:expensesflutter/models/transaction.dart';

class TransactionManager {
  List<Transaction> _transactions = [
    Transaction("1", "Nike Shoes 69", 39.99, DateTime.now()),
    Transaction("2", "Puma cal", 23.00, DateTime.now()),
    Transaction("3", "Puma Ones", 109, DateTime.now()),
    Transaction("4", "Addidas", 211, DateTime.now())
  ];

  void add(Transaction newTransaction) => _transactions.add(newTransaction);

  bool removeAtIndex(int i) {
    if (i < 0 || i >= _transactions.length) {
      return false;
    }
    _transactions.removeAt(i);
    return true;
  }

  List<Transaction> get getTransactions => _transactions;
}
