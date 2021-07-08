import 'package:flutter/material.dart';
import 'package:flutter_bmi/calc_bmi.dart';
import 'package:flutter_bmi/screens/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  final int height;
  final int weight;
  const ResultPage({Key key, this.height, this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CalcBmi calc = CalcBmi(height: height, weight: weight);
    double _bmi = calc.calcBmi();

    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Expanded(
            flex: 3,
            child: Text(
              "Your Results",
              style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
            ),
          ),
          Expanded(
            flex: 27,
            child: Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Color(0xff24263B), borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    calc.getResult(_bmi),
                    style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
                  ),
                  Text(
                    _bmi.toStringAsFixed(1),
                    style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 100, fontWeight: FontWeight.w700, color: calc.getColor(_bmi))),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              child: Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: Text(
                  "RECALCULATE",
                  style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BmiCalc()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
