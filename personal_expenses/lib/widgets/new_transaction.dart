import 'package:flutter/material.dart';
import 'package:personal_expenses/Colors.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;

  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (value) => titleInput = value,
              controller: _titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (value) => amountInput = value,
              controller: _amountController,
            ),
            TextButton(
              child: Text(
                'Add Transaction',
                style: TextStyle(color: AppColors.secondColor),
              ),
              onPressed: () {
                addTx(
                  _titleController.text,
                  double.parse(_amountController.text),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
