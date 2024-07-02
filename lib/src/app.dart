import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_calculator/src/data/auth_repository.dart';
import 'package:food_calculator/src/data/database_reposetory.dart';
import 'package:food_calculator/src/features/recepies/presentation/login_screen.dart';
import 'package:food_calculator/src/features/recepies/presentation/welcome_sreen.dart';

class MainApp extends StatelessWidget {
  final AuthRepository authRepository;
  final DatabaseRepository databaseRepository;
  const MainApp(
      {super.key,
      required this.authRepository,
      required this.databaseRepository});

  @override
  Widget build(BuildContext context) {
    const loginKey = ValueKey("login");
    const homeScreen = ValueKey("home");

    return StreamBuilder<User?>(
        stream: authRepository.authStateChanges(),
        builder: (context, snapshot) {
          final user = snapshot.data; // User oder null
          return MaterialApp(
              key: user == null ? loginKey : homeScreen,
              home: user == null
                  ? LoginScreen(
                      databaseRepository: databaseRepository,
                      authRepository: authRepository)
                  : WelcomeScreen(databaseRepository: databaseRepository));
        });
  }
}
