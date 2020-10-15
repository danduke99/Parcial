import 'package:flutter/material.dart';

class NewHistoryPage extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewHistoryPage(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Pesos',
              ),
              controller: amountController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Currency',
              ),
              keyboardType: TextInputType.number,
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Resultado',
              ),
              controller: amountController,
            ),
          ],
        ),
      ),
      elevation: 5,
    );
  }
}
