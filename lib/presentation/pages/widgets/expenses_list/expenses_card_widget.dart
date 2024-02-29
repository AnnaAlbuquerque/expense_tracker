import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/utils/category_enum.dart';
import 'package:expense_tracker_app/utils/date_time_extensions.dart';
import 'package:flutter/material.dart';

class ExpenseCardWidget extends StatelessWidget {
  final Expense expense;

  const ExpenseCardWidget({
    required this.expense,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text('R\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(expense.category.icon),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(expense.date.formatDate())
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
