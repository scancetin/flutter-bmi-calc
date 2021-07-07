import 'package:flutter/material.dart';
import 'package:flutter_bmi/screens/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: BmiCalc(),
    );
  }
}
