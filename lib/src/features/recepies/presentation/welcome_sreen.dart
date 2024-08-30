import 'package:flutter/material.dart';
import 'package:food_calculator/src/data/auth_repository.dart';
import 'package:food_calculator/src/data/database_reposetory.dart';
import 'package:food_calculator/src/features/recepies/domain/drawer.dart';
import 'package:food_calculator/src/features/recepies/presentation/Profile_screen.dart';
import 'package:food_calculator/src/features/recepies/presentation/discover_foods.dart';

class WelcomeScreen extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;

  const WelcomeScreen(
      {super.key,
      required this.databaseRepository,
      required this.authRepository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(
          databaseRepository: databaseRepository,
          authRepository: authRepository),
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/images/fazek.png",
                height: 50,
                width: 50,
              ),
              const Text("My Food Calorie")
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset("assets/images/marhapori2.png"),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DiscoveryPage(
                              authRepository: authRepository,
                              database: databaseRepository,
                            )));
              },
              child: const Text("explore"))
        ],
      ),
    );
  }

  Drawer CustomDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text("Profile"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfileScreen(
                            databaseRepository: databaseRepository,
                            authRepository: authRepository,
                          )));
            },
          )
        ],
      ),
    );
  }
}
