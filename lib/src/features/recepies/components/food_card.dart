import 'package:flutter/material.dart';
import 'package:food_calculator/src/features/recepies/domain/recipe.dart';

class FoodCard extends StatelessWidget {
  final Recipe recipe;

  const FoodCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  recipe.picture,
                  width: double.infinity,
                  height: 100,
                ),
                Text(
                  recipe.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                Text("${recipe.getNutritionalValue().calorie.toString()} kcal")
              ],
            )));
  }
}
