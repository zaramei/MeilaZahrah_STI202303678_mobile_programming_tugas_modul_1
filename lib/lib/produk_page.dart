import 'package:flutter/material.dart';
import 'produk_detail.dart';
import 'produk_form.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Tambah Produk',
            onPressed: () async {
              // Navigasi ke halaman form produk
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProdukForm(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: const [
          ItemProduk(
            kodeProduk: "A001",
            namaProduk: "Kulkas",
            harga: 2500000,
          ),
          ItemProduk(
            kodeProduk: "A002",
            namaProduk: "TV",
            harga: 5000000,
          ),
          ItemProduk(
            kodeProduk: "A003",
            namaProduk: "Mesin Cuci",
            harga: 1500000,
          ),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  const ItemProduk({
    Key? key,
    required this.kodeProduk,
    required this.namaProduk,
    required this.harga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman detail produk
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProdukDetail(
              kodeProduk: kodeProduk,
              namaProduk: namaProduk,
              harga: harga,
            ),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 6),
        elevation: 3,
        child: ListTile(
          leading: const Icon(Icons.shopping_cart, color: Colors.blueAccent),
          title: Text(
            namaProduk,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Harga: Rp $harga'),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        ),
      ),
    );
  }
}
