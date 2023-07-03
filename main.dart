import 'package:flutter/material.dart';
import 'qoute.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QouteList(),
    ));

class QouteList extends StatefulWidget {
  const QouteList({super.key});

  @override
  State<QouteList> createState() => _QouteListState();
}

class _QouteListState extends State<QouteList> {
  // List<String> qoutes = [
  //   "Be yourself; everyone else is already taken",
  //   "I have nothing to declare except my genius",
  //   "The truth is rearely pure and never simple",
  // ];

  List<Qoute> qoutes = [
    Qoute(text: "Be yourself; everyone else is already taken", author: )
  ]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Ninja Id'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: qoutes.map((qoute) => Text(qoute)).toList(),
      ),
    );
  }
}
