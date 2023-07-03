import 'qoute.dart';
import 'package:flutter/material.dart';

class QouteCard extends StatelessWidget {
  final Qoute qoute;
  final void Function()? delete;
  const QouteCard({
    super.key,
    required this.qoute,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              qoute.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              qoute.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 8.0),
            TextButton.icon(
              onPressed: delete,
              label: const Text('Delete'),
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
