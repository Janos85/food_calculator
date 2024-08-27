import 'package:flutter/material.dart';
import 'package:food_calculator/src/data/database_reposetory.dart';
import 'package:food_calculator/src/data/mock_database.dart';
import 'package:food_calculator/src/features/recepies/domain/recipe.dart';

class DiscoveryPage extends StatelessWidget {
  const DiscoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DatabaseRepository database = MockDatabase();
    return Scaffold(
      body: FutureBuilder<List<Recipe>>(
        future: database.getRecipes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No recipes found"));
          } else if (snapshot.hasError) {
            return Center(child: Text("An error occurred: ${snapshot.error}"));
          } else {
            final recipes = snapshot.data!;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
    );
  }
}

class FoodCard extends StatelessWidget {
  final Recipe recipe;

  const FoodCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Image.asset(recipe.picture),
        Text(recipe.name),
        Text(recipe.getNutritionalValue().calorie.toString())
      ],
    ));
  }
}
