import 'package:flutter/material.dart';
import 'package:food_calculator/src/data/database_reposetory.dart';

class WelcomeScreen extends StatelessWidget {
  final DatabaseRepository databaseRepository;

  const WelcomeScreen({super.key, required this.databaseRepository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Stack(children: [
        Image.asset("assets/images/marhapori.png"),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.network(
                    "https://www.marazplast.hu/img/27548/5998666770281/5998666770281.webp?time=1681301061",
                    height: 30,
                    width: 30,
                  ),
                  const Text("My Food Calorie")
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
