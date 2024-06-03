import 'package:food_calculator/src/features/recepies/domain/ingredients.dart';
import 'package:food_calculator/src/features/recepies/domain/recipe.dart';

abstract class DatabaseRepository {
  Future<List<Recipe>> getRecipes();

  Future<List<Ingredient>> getIngredients();

  Future<void> addRecipe(Recipe recipe);

  Future<void> addIngredient(Ingredient ingredient);
}
