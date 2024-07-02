import 'package:flutter/material.dart';
import 'package:food_calculator/src/data/auth_repository.dart';
import 'package:food_calculator/src/data/database_reposetory.dart';

class SignUpScreen extends StatefulWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const SignUpScreen(
      {super.key,
      required this.databaseRepository,
      required this.authRepository});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //state:
  bool showPassword = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reg"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
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
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      icon: Icon(Icons.email),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: !showPassword,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: "Password",
                    icon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {});
                        showPassword = !showPassword;
                      },
                      icon: showPassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  obscureText: !showPassword,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: "Repeat password",
                    icon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {});
                        showPassword = !showPassword;
                      },
                      icon: showPassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    widget.authRepository.signUpWithEmailAndPassword(
                        emailController.text, passwordController.text);
                  },
                  child: const Text("Sign up")),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  ////navigate to reg screen
                  ///
                },
                child: const Text("Sing up hier!"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
