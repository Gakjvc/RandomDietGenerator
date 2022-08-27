import 'dart:math';
import 'package:flutter/material.dart';
import 'food.dart';

//TODO organize functions
Widget homePage() {
  return Scaffold(
    floatingActionButton: IconButton(
      onPressed: (() => _calcIntake()),
      icon: Icon(Icons.ac_unit),
    ),
  );
}

void _calcIntake() {
  double kcal = 2000, dailyProtein, dailyCarbs, dailyFats;
  Food food1 = Food(name: "Frango", kcal: 125, protein: 20, fats: 5);
  Food food2 =
      Food(name: "Ovo", kcal: 146, carbs: 0.6, protein: 13.3, fats: 9.5);
  food1.portion = Random().nextDouble();
  food2.portion = Random().nextDouble();
  while (food1.kcal * food1.portion + food2.kcal * food2.portion != kcal) {
    food1.portion = Random().nextInt(20) * Random().nextDouble();
    food2.portion = Random().nextInt(20) * Random().nextDouble();
  }
  print(food1.portion);
  print(food2.portion);
}
