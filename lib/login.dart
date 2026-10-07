import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController inputUsername = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("genshin_impact"),
        backgroundColor: const Color.fromARGB(255, 120, 40, 95),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(255, 205, 190, 230),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(12)),

          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                controller: inputUsername,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 255, 220, 235),
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

          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                controller: inputPassword,
                obscureText: true,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 255, 220, 235),
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

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 120, 40, 95),
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
