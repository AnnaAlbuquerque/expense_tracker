import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/presentation/pages/widgets/expenses_list/expenses_list_widget.dart';
import 'package:flutter/material.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({Key? key}) : super(key: key);

  @override
  State<ExpensesPage> createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  final List<Expense> _registeredExpenses = [
    Expense(title: "test1", amount: 10.0, category: Category.extras, date: DateTime.now()),
    Expense(title: "test2", amount: 1000.0, category: Category.fixedExpenses, date: DateTime.now()),
    Expense(title: "test3", amount: 150.0, category: Category.food, date: DateTime.now()),
    Expense(title: "test4", amount: 50.0, category: Category.health, date: DateTime.now()),
    Expense(title: "test5", amount: 20.0, category: Category.house, date: DateTime.now()),
    Expense(title: "test6", amount: 60.0, category: Category.leisure, date: DateTime.now()),
    Expense(
      title: "test7",
      amount: 40.0,
      category: Category.personalExpenses,
      date: DateTime.now(),
    ),
    Expense(title: "test8", amount: 28.90, category: Category.stream, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text('chart'),
        Expanded(
          child: ExpensesListWidget(
            expensesList: _registeredExpenses,
          ),
        ),
      ],
    ));
  }
}
