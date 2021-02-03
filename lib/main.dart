import 'package:fitness_ui_app/fitness.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Fitness(),
    );
  }
}
