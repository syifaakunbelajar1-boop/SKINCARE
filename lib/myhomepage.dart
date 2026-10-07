import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Controller untuk membaca input Username dan Password
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
      // Background Lilac Soft khas Columbina
      backgroundColor: const Color.fromARGB(255, 205, 190, 230),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Card Form Login
              Container(
                width: 320,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 120, 40, 95),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Input Username
                    TextFormField(
                      controller: inputUsername,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 120, 40, 95),
                        ),
                        hintText: 'Username',
                        fillColor: const Color.fromARGB(
                          255,
                          255,
                          220,
                          235,
                        ), // Pink Pastel
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Input Password
                    TextFormField(
                      controller: inputPassword,
                      obscureText: true, // Sembunyikan karakter password
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 120, 40, 95),
                        ),
                        hintText: 'Password',
                        fillColor: const Color.fromARGB(
                          255,
                          255,
                          220,
                          235,
                        ), // Pink Pastel
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Tombol Login
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            120,
                            40,
                            95,
                          ),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onPressed: () {
                          print("Username: ${inputUsername.text}");
                          print("Password: ${inputPassword.text}");
                        },
                        child: const Text(
                          "Masuk",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
