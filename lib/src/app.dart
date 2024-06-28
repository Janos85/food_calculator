import 'package:flutter/material.dart';
import 'package:food_calculator/src/data/auth_repository.dart';
import 'package:food_calculator/src/data/database_reposetory.dart';
import 'package:food_calculator/src/features/recepies/presentation/login_screen.dart';

class MainApp extends StatelessWidget {
  final AuthRepository authRepository;
  final DatabaseRepository databaseRepository;
  const MainApp(
      {super.key,
      required this.authRepository,
      required this.databaseRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginScreen(
      databaseRepository: databaseRepository,
      authRepository: authRepository,
    ));
  }
}
