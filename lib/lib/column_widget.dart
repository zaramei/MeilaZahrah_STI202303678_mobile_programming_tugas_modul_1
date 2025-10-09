import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Column'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // kasih jarak biar rapi
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // rata kiri
          children: const [
            Text('Kolom 1', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8), // jarak antar teks
            Text('Kolom 2', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Kolom 3', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Kolom 4', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
