import 'package:expense_tracker_app/utils/date_time_extensions.dart';
import 'package:flutter/material.dart';

class NewExpensePage extends StatefulWidget {
  const NewExpensePage({Key? key}) : super(key: key);

  @override
  State<NewExpensePage> createState() => _NewExpensePageState();
}

class _NewExpensePageState extends State<NewExpensePage> {
  late TextEditingController _titleController;
  late TextEditingController _valueController;
  String _selectedDate = '';

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _valueController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _valueController.dispose();
    super.dispose();
  }

  void _showDatePicker() {
    final date = DateTime.now();
    final firstDate = DateTime(date.year - 1);

    showDatePicker(
      context: context,
      firstDate: firstDate,
      lastDate: date,
      initialDate: date,
    ).then(
      (value) => setState(
        () {
          _selectedDate = value?.formatDate() ?? '';
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _valueController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixText: '\$',
                    label: Text('Value'),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      _selectedDate.isEmpty ? 'No Date Selected' : _selectedDate,
                    ),
                    IconButton(
                      onPressed: _showDatePicker,
                      icon: const Icon(
                        Icons.calendar_month,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                child: const Text('Save'),
                onPressed: () {
                  print(_titleController.value.text);
                  print(_valueController.value.text);
                },
              ),
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
