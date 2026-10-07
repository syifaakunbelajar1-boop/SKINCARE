import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Pembuatan Variabel Yang Akan Dipakai
  TextEditingController inputUsername = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("genshin_impact"),
        backgroundColor: const Color.fromARGB(
          255,
          120,
          40,
          95,
        ), // Ungu Gelap Columbina
        foregroundColor: Colors.white,
      ),
      // Background Lilac Soft
      backgroundColor: const Color.fromARGB(255, 205, 190, 230),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(12)),

          // Input Username
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                controller: inputUsername,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(
                    255,
                    255,
                    220,
                    235,
                  ), // Pink Pastel Columbina
                  hintText: 'Masukan Username Kamu',
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

          // Input Password
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                controller: inputPassword,
                obscureText: true, // Sembunyikan karakter password
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(
                    255,
                    255,
                    220,
                    235,
                  ), // Pink Pastel Columbina
                  hintText: 'Masukan Password Kamu',
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

          // Tombol Login
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(
                255,
                120,
                40,
                95,
              ), // Ungu Gelap
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text("Login"),
            onPressed: () {
              print(inputUsername.text);
              print(inputPassword.text);
            },
          ),
        ],
      ),
    );
  }
}
