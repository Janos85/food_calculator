import 'package:food_calculator/src/data/database_reposetory.dart';
import 'package:food_calculator/src/features/recepies/domain/ingredients.dart';
import 'package:food_calculator/src/features/recepies/domain/nutritional_values.dart';
import 'package:food_calculator/src/features/recepies/domain/recipe.dart';

class MockDatabase implements DatabaseRepository {
  List<Recipe> recipes = [
    Recipe(name: "Nudeln mit Tomatensoße", picture: "", ingredients: [
      Ingredient(
          name: "Nudeln",
          amount: 3,
          nutritionalValue: NutritionalValue(
              calorie: 100, protein: 15, fat: 1, sugar: 5, salt: 1)),
      Ingredient(
          name: "Tomaten",
          amount: 2,
          nutritionalValue: NutritionalValue(
              calorie: 30, protein: 1, fat: 0, sugar: 5, salt: 1))
    ])
  ];
  List<Ingredient> ingrediants = [
    Ingredient(
        name: "Nudeln",
        amount: 1,
        nutritionalValue: NutritionalValue(
            calorie: 100, protein: 15, fat: 1, sugar: 5, salt: 1)),
    Ingredient(
        name: "Tomaten",
        amount: 1,
        nutritionalValue: NutritionalValue(
            calorie: 30, protein: 1, fat: 0, sugar: 5, salt: 1))
  ];

  @override
  Future<List<Recipe>> getRecipes() async {
    await Future.delayed(const Duration(seconds: 2));
    return recipes;
  }

  @override
  Future<List<Ingredient>> getIngredients() async {
    await Future.delayed(const Duration(seconds: 2));
    return ingrediants;
  }

  @override
  Future<void> addRecipe(Recipe recipe) async {
    await Future.delayed(const Duration(seconds: 2));
    recipes.add(recipe);
  }

  @override
  Future<void> addIngredient(Ingredient ingredient) async {
    await Future.delayed(const Duration(seconds: 2));
    ingrediants.add(ingredient);
  }
}
