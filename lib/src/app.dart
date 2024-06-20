import 'package:flutter/material.dart';
import 'package:food_calculator/src/data/database_reposetory.dart';
import 'package:food_calculator/src/features/recepies/presentation/login_screen.dart';

import 'data/mock_database.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    DatabaseRepository databaseRepository = MockDatabase();
    return MaterialApp(
        home: LoginScreen(
      databaseRepository: databaseRepository,
    ));
  }
}
