import 'dart:ffi';

import 'package:flutter/material.dart';

class Food {
  String name;
  double calories;
  double protein;
  double carbs;
  double fats;
  Food(
      {this.name = "",
      this.calories = 0,
      this.protein = 0,
      this.carbs = 0,
      this.fats = 0});
}
