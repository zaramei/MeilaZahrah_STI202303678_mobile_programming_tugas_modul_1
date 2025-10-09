import 'package:flutter/material.dart';
import 'column_widget.dart'; // pastikan file ini ada di folder lib/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // cara modern, bisa juga pakai Key? key

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Flutter Pertama',
      home: ColumnWidget(), // const dihapus, karena mungkin WidgetColumn bukan const
    );
  }
}
