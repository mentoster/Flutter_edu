import 'package:flutter/material.dart';
import 'package:personal_expenses/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter personal expenses'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final List<Transaction> transactions = [
    Transaction(
      't2',
      'Weekly Griceries',
      17.53,
      DateTime.now(),
    ),
    Transaction(
      't1',
      'New Shoes',
      69.99,
      DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(child: Text('Flutter app')),
          elevation: 5,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: Text('Chart'),
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                  child: Text(tx.title),
                );
              }).toList(),
            ),
          ],
        ));
  }
}
