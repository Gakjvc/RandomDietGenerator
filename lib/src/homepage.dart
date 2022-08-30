import 'dart:math';
import 'package:flutter/material.dart';
import 'food.dart';

Food frango = Food(name: "Frango", kcal: 125, protein: 20, fats: 5);
Food ovo = Food(name: "Ovo", kcal: 146, carbs: 0.6, protein: 13.3, fats: 9.5);
//TODO organize functions
Widget homePage() {
  return Scaffold(
    body: ListView(children: [meal()]),
    floatingActionButton: IconButton(
      onPressed: (() {
        _calcIntake();
      }),
      icon: Icon(Icons.casino_outlined),
    ),
  );
}

void _calcIntake() {
  double kcal = 2000, dailyProtein, dailyCarbs, dailyFats;
  double a = Random().nextDouble();
  double b = 1 - a;
  frango.portion = double.parse(((kcal * a) / frango.kcal).toStringAsFixed(1));
  ovo.portion = double.parse(((kcal * b) / ovo.kcal).toStringAsFixed(1));
  
}

Widget meal() {
  return Text(frango.name + " " + frango.portion.toString());
}
