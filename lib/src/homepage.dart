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
  List<Food> foods = [];
//TODO organize functions
  @override
  Widget build(BuildContext context) {
    foods = [frango, ovo];
    return Scaffold(body: meal(foods), floatingActionButton: NewDiet());
  }

  void _calcIntake(List<Food> foods) {
    double kcal = 2000, dailyProtein, dailyCarbs, dailyFats;
    double a = Random().nextDouble();
    // porcao1 +porcao2 + porcao3 = porcaofinal
    // a + b + c = 1
    double b = 1 - a;
    foods[1].portion =
        double.parse(((kcal * a) / foods[1].kcal).toStringAsFixed(1));
    foods[2].portion =
        double.parse(((kcal * b) / foods[2].kcal).toStringAsFixed(1));
  }

  Widget NewDiet() {
    return IconButton(
      icon: Icon(Icons.casino_outlined),
      onPressed: (() {
        setState(() {
          _calcIntake(foods);
        });
      }),
    );
  }

  Widget meal(List<Food> foods) {
    return ListView(children: [Portion(foods[1]), Portion(foods[2])]);
  }

  Widget Portion(Food food) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(food.name + " " + food.portion.toString()),
    );
  }
}
