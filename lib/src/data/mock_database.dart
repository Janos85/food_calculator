import 'package:food_calculator/src/data/database_reposetory.dart';
import 'package:food_calculator/src/features/recepies/domain/Ingredients.dart';
import 'package:food_calculator/src/features/recepies/domain/Nutritinalvalues.dart';
import 'package:food_calculator/src/features/recepies/domain/Recipe.dart';

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
  List<Recipe> getRecipes() {
    return recipes;
  }

  @override
  List<Ingredient> getIngredients() {
    return ingrediants;
  }

  @override
  void addRecipe(Recipe recipe) {
    recipes.add(recipe);
  }

  @override
  void addIngredient(Ingredient ingredient) {
    ingrediants.add(ingredient);
  }
}
