import 'package:flutter/material.dart';
import 'widget_row.dart';  // pastikan file column_widget.dart ada di lib/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(   // jangan pakai const di sini
      debugShowCheckedModeBanner: false,
      title: "Aplikasi Flutter Pertama",
      home: const RowWidget(),
    );
  }
}
