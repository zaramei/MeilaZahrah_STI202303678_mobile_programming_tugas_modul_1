import 'package:flutter/material.dart';
import 'produk_form.dart';
import 'produk_detail.dart';
import 'produk_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Flutter Pertama',
      
      // Halaman pertama yang dijalankan
      initialRoute: '/form',

      // Daftar semua rute halaman dalam aplikasi
      routes: {
        '/form': (context) => const ProdukForm(),
        '/detail': (context) => const ProdukDetail(
              kodeProduk: '',
              namaProduk: '',
              harga: 0,
            ),
        '/page': (context) => const ProdukPage(),
      },
    );
  }
}
