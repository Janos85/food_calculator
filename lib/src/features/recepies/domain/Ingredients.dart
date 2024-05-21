import 'package:food_calculator/src/features/recepies/domain/nutritional_values.dart';

class Ingredient {
  String name;
  NutritionalValue nutritionalValue;
  double amount;

  Ingredient(
      {required this.name,
      required this.nutritionalValue,
      required this.amount});
}
