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
          const Text("My food calculator"),
          const Text("Wellcome"),
          SizedBox(
            height: 100,
            child: Image.network(
                "https://www.marazplast.hu/img/27548/5998666770281/5998666770281.webp?time=1681301061"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    icon: Icon(Icons.email))),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  icon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.remove_red_eye),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
