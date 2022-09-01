import 'package:flutter/material.dart';
import 'food.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Food frango = Food(name: "Frango", kcal: 125, protein: 20, fats: 5);
  Food ovo = Food(name: "Ovo", kcal: 146, carbs: 0.6, protein: 13.3, fats: 9.5);
//TODO organize functions
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: meal(), floatingActionButton: NewDiet());
  }

  void _calcIntake(Food food1, Food food2) {
    double kcal = 2000, dailyProtein, dailyCarbs, dailyFats;
    double a = Random().nextDouble();
    double b = 1 - a;
    food1.portion = double.parse(((kcal * a) / food1.kcal).toStringAsFixed(1));
    food2.portion = double.parse(((kcal * b) / food2.kcal).toStringAsFixed(1));
  }

  Widget NewDiet() {
    return IconButton(
      icon: Icon(Icons.casino_outlined),
      onPressed: (() {
        setState(() {
          _calcIntake(frango, ovo);
        });
      }),
    );
  }

  Widget meal() {
    return ListView(children: [
      Text(frango.name + " " + frango.portion.toString()),
      Text(ovo.name + " " + ovo.portion.toString())
    ]);
  }
}
