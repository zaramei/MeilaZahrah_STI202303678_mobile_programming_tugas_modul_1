import 'package:flutter/material.dart'; 
import 'produk_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplikasi Flutter Pertama",
      // Panggil widget yang mau ditampilkan
      home: ProdukForm(),    // atau ganti jadi ProdukForm1()
    );
  }
}
