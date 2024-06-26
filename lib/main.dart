import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_calculator/firebase_options.dart';
import 'package:food_calculator/src/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}
