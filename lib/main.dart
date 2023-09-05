import 'package:flutter/material.dart';
import 'package:plant_watering_app/AboutPlants.dart';
import 'package:plant_watering_app/Home/HomeScreen.dart';
import 'package:plant_watering_app/calendar.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      // routes: {'home': (context) => const HomeScreen()},
    ),
  );
}
