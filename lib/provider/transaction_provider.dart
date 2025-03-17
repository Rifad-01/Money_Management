import 'package:flutter/material.dart';
import 'package:money_management/model/transaction.dart';

class TransactionProvider extends ChangeNotifier {
  final List<Transaction> _transactions = [];

  List<Transaction> get transactions => _transactions;

  //Total Income Calculation
  double get totalIncome => _transactions
      .where((tx) => tx.isIncome)
      .fold(0, (sum, tx) => sum + tx.amount);
}
