import 'package:flutter/material.dart';
import 'package:food_calculator/src/data/auth_repository.dart';
import 'package:food_calculator/src/data/database_reposetory.dart';
import 'package:food_calculator/src/features/recepies/presentation/sign_up_screen.dart';
import 'package:food_calculator/src/features/recepies/presentation/welcome_sreen.dart';

class LoginScreen extends StatefulWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;

  const LoginScreen(
      {super.key,
      required this.databaseRepository,
      required this.authRepository});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //state:
  bool showPassrord = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
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
                  child: Image.asset("assets/images/marhapori.png")),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
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
                  obscureText: !showPassrord,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: "Password",
                    icon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {});
                        showPassrord = !showPassrord;
                      },
                      icon: showPassrord
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WelcomeScreen(
                                  databaseRepository: widget.databaseRepository,
                                )));
                  },
                  child: const Text("Login")),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignUpScreen(
                                databaseRepository: widget.databaseRepository,
                                authRepository: widget.authRepository,
                              )));
                  ////navigate to reg screen
                  ///
                },
                child: const Text("Register Hier!"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
