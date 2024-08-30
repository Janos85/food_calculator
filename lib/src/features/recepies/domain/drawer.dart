import 'package:flutter/material.dart';
import 'package:food_calculator/src/data/auth_repository.dart';
import 'package:food_calculator/src/data/database_reposetory.dart';
import 'package:food_calculator/src/features/recepies/presentation/Profile_screen.dart';
import 'package:food_calculator/src/features/recepies/presentation/discover_foods.dart';
import 'package:food_calculator/src/features/recepies/presentation/login_screen.dart';

class MyDrawer extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const MyDrawer(
      {super.key,
      required this.databaseRepository,
      required this.authRepository});

  @override
  Widget build(BuildContext context) {
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
          ),
          ListTile(
            title: const Text("Discover Recipes"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DiscoveryPage(
                            authRepository: authRepository,
                            database: databaseRepository,
                          )));
            },
          ),
          ListTile(
            title: const Text("Logout"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginScreen(
                          databaseRepository: databaseRepository,
                          authRepository: authRepository)));
            },
          )
        ],
      ),
    );
  }
}
