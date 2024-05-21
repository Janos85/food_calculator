import 'Ingredients.dart';
import 'Nutritinal_values.dart';

class Recipe {
//  List<String> steps;
  String name;
  String picture;
  List<Ingredient> ingredients;

  Recipe(
      {required this.name, required this.picture, required this.ingredients});

  NutritionalValue getNutritionalValue() {
    double calorie = 0;
    double protein = 0;
    double fat = 0;
    double sugar = 0;
    double salt = 0;

    for (Ingredient ingredient in ingredients) {
      calorie += ingredient.nutritionalValue.calorie * ingredient.amount;
      protein += ingredient.nutritionalValue.protein * ingredient.amount;
      fat += ingredient.nutritionalValue.fat * ingredient.amount;
      sugar += ingredient.nutritionalValue.sugar * ingredient.amount;
      salt += ingredient.nutritionalValue.salt * ingredient.amount;
    }

    return NutritionalValue(
        calorie: calorie, protein: protein, fat: fat, sugar: sugar, salt: salt);
  }
}
