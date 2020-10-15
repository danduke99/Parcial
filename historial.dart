// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';

import 'newhistory.dart';

class HistorialPage extends StatefulWidget {
  @override
  _HistorialPageState createState() => _HistorialPageState();
}

class _HistorialPageState extends State<HistorialPage> {
  final List<History> history = [
    History(
      id: null,
      text: null,
      amount: null,
      result: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewHistoryPage(_addHistory),
      ],
    );
  }

  void _addHistory(String title, double amount) {
    final newH = History(
      id: null,
      title: title,
      amount: amount,
    );

    setState(() {
      history.add(newH);
    });
  }
}
