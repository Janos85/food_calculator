import 'package:food_calculator/src/features/recepies/domain/ingredients.dart';
import 'package:food_calculator/src/features/recepies/domain/recipe.dart';

abstract class DatabaseRepository {
  List<Recipe> getRecipes();
  List<Ingredient> getIngredients();
  void addRecipe(Recipe recipe);
  void addIngredient(Ingredient ingredient);
}
