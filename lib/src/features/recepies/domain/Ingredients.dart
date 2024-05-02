import 'Nutritinalvalues.dart';

class Ingredient {
  String name;
  NutritionalValue nutritionalValue;
  double amount;

  Ingredient(
      {required this.name,
      required this.nutritionalValue,
      required this.amount});
}
