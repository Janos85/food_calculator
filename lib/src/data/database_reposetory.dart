import 'package:food_calculator/src/features/recepies/domain/Ingredients.dart';
import 'package:food_calculator/src/features/recepies/domain/Recipe.dart';

abstract class DatabaseRepository {
  List<Recipe> getRecipes();
  List<Ingredient> getIngredients();
  void addRecipe(Recipe recipe);
  void addIngredient(Ingredient ingredient);
}
