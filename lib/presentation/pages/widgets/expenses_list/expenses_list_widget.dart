import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/presentation/pages/widgets/expenses_list/expenses_card_widget.dart';
import 'package:flutter/material.dart';

class ExpensesListWidget extends StatelessWidget {
  final List<Expense> expensesList;
  const ExpensesListWidget({
    required this.expensesList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expensesList.length,
      itemBuilder: (context, index) => ExpenseCardWidget(
        expense: expensesList[index],
      ),
    );
  }
}
