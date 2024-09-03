import 'package:flutter/material.dart';
import 'package:food_calculator/src/data/auth_repository.dart';
import 'package:food_calculator/src/data/database_reposetory.dart';
import 'package:food_calculator/src/features/recepies/components/food_card.dart';
import 'package:food_calculator/src/features/recepies/domain/drawer.dart';
import 'package:food_calculator/src/features/recepies/domain/recipe.dart';

class DiscoveryPage extends StatelessWidget {
  final DatabaseRepository database;
  final AuthRepository authRepository;
  const DiscoveryPage(
      {super.key, required this.database, required this.authRepository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Discover Recipes"),
        backgroundColor: Colors.lightGreen,
      ),
      drawer: MyDrawer(
        databaseRepository: database,
        authRepository: authRepository,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                    label: Text("Search")),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: FutureBuilder<List<Recipe>>(
                  future: database.getRecipes(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Center(child: Text("No recipes found"));
                    } else if (snapshot.hasError) {
                      return Center(
                          child: Text("An error occurred: ${snapshot.error}"));
                    } else {
                      final recipes = snapshot.data!;
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          final recipe = recipes[index];
                          return FoodCard(recipe: recipe);
                        },
                        itemCount: recipes.length,
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
