import 'package:flutter/material.dart';
import 'qoute.dart';
import 'qoute_card.dart';

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
  List<Qoute> qoutes = [
    Qoute(
        text: "Be yourself; everyone else is already taken",
        author: 'Oscar Wilde'),
    Qoute(
        text: "I have nothing to declare except my genius",
        author: 'Oscar Wilde'),
    Qoute(
        text: "The truth is rearely pure and never simple",
        author: 'Oscar Wilde'),
  ];

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
        children: qoutes
            .map((qoute) => QouteCard(
                qoute: qoute,
                delete: () {
                  setState(() {
                    qoutes.remove(qoute);
                  });
                }))
            .toList(),
      ),
    );
  }
}
