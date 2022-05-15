import 'package:flutter/material.dart';

class ExpensesIncomes extends StatefulWidget {
  const ExpensesIncomes({Key? key}) : super(key: key);

  @override
  State<ExpensesIncomes> createState() => _ExpensesIncomesState();
}

class _ExpensesIncomesState extends State<ExpensesIncomes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses/Incomes'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text ('Expenses/Incomes screen', style: TextStyle(fontSize: 40)),
      ),
    );
  }
}
