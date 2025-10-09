import 'package:flutter/material.dart';
import 'produk_detail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  void dispose() {
    _kodeProdukTextboxController.dispose();
    _namaProdukTextboxController.dispose();
    _hargaProdukTextboxController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _textboxKodeProduk(),
            const SizedBox(height: 15),
            _textboxNamaProduk(),
            const SizedBox(height: 15),
            _textboxHargaProduk(),
            const SizedBox(height: 30),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  Widget _textboxKodeProduk() {
    return TextField(
      controller: _kodeProdukTextboxController,
      decoration: InputDecoration(
        labelText: "Kode Produk",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        prefixIcon: const Icon(Icons.qr_code),
      ),
    );
  }

  Widget _textboxNamaProduk() {
    return TextField(
      controller: _namaProdukTextboxController,
      decoration: InputDecoration(
        labelText: "Nama Produk",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        prefixIcon: const Icon(Icons.shopping_bag),
      ),
    );
  }

  Widget _textboxHargaProduk() {
    return TextField(
      controller: _hargaProdukTextboxController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Harga Produk",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        prefixIcon: const Icon(Icons.monetization_on),
      ),
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton.icon(
      onPressed: () {
        if (_kodeProdukTextboxController.text.isEmpty ||
            _namaProdukTextboxController.text.isEmpty ||
            _hargaProdukTextboxController.text.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Semua field harus diisi!')),
          );
          return;
        }

        String kodeProduk = _kodeProdukTextboxController.text;
        String namaProduk = _namaProdukTextboxController.text;
        int harga = int.parse(_hargaProdukTextboxController.text);

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
      icon: const Icon(Icons.save),
      label: const Text('Simpan'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
