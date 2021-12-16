import 'package:flutter/material.dart';
import './new_transactions.dart';
import './transactions_list.dart';
import '../models/transactions.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      amount: 10.99,
      date: DateTime.now(),
      id: "id001",
      title: 'Pant',
    ),
    Transaction(
      amount: 12.21,
      date: DateTime.now(),
      id: "id002",
      title: 'Khana',
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTxt = Transaction(
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
      title: title,
    );
    setState(() {
      _userTransactions.add(newTxt);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
