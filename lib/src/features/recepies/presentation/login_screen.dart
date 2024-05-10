import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: Image.network(
                "https://www.marazplast.hu/img/27548/5998666770281/5998666770281.webp?time=1681301061"),
          ),
          TextFormField(decoration: const InputDecoration()),
          Container(),
          const Text("LOGIN"),
          const TextField(),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
