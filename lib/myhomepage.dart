import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Controller untuk inputan form biasa
  TextEditingController inputNama = TextEditingController();
  TextEditingController inputEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("genshin_impact"),
        backgroundColor: const Color.fromARGB(255, 120, 40, 95), // Ungu Gelap
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(255, 205, 190, 230), // Lilac
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(12)),

          // Input Nama
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                controller: inputNama,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 255, 220, 235), // Pink Pastel
                  hintText: 'Masukkan Nama Kamu',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 150, 80, 110),
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 120, 40, 95),
                    ),
                  ),
                ),
              ),
            ),
          ),

          const Padding(padding: EdgeInsets.all(8)),

          // Input Email
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                controller: inputEmail,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 255, 220, 235), // Pink Pastel
                  hintText: 'Masukkan Email Kamu',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 150, 80, 110),
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 120, 40, 95),
                    ),
                  ),
                ),
              ),
            ),
          ),

          const Padding(padding: EdgeInsets.all(12)),

          // Tombol Simpan/Kirim
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 120, 40, 95),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text("Simpan Data"),
            onPressed: () {
              print(inputNama.text);
              print(inputEmail.text);
            },
          ),
        ],
      ),
    );
  }
}
