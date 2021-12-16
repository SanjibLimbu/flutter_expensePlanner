import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleContoller = TextEditingController();
  final amountContoller = TextEditingController();

  final Function addTxt;
  NewTransaction(this.addTxt, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
              controller: titleContoller,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountContoller,
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
              ),
              onPressed: (){ 
                addTxt(
                titleContoller.text,
                double.parse(amountContoller.text),
              );
              },
              child: const Text(
                'Add transaction',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
