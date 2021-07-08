import 'package:flutter/material.dart';
import 'package:flutter_bmi/screens/result_page.dart';
import 'package:flutter_bmi/widgets/age_weight_widget.dart';
import 'package:flutter_bmi/widgets/box_widget.dart';
import 'package:flutter_bmi/widgets/gender_widget.dart';
import 'package:flutter_bmi/widgets/height_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiCalc extends StatefulWidget {
  BmiCalc({Key key}) : super(key: key);

  @override
  _BmiCalcState createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  double _heightValue = 180;
  int _weightValue = 70;
  int _ageValue = 18;
  bool _gender = false; //0 for male, 1 for female
  Color _hl = Color(0xff323244); // 323244 hl, 24263B not hl
  Color _notHl = Color(0xff24263B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Expanded(
                  child: BoxWidget(
                    boxColor: _gender ? _notHl : _hl,
                    widget: GenderWidget(
                        genderType: "MALE",
                        onPressed: () {
                          setState(() {
                            _gender = false;
                          });
                        }),
                  ),
                ),
                Expanded(
                  child: BoxWidget(
                    boxColor: _gender ? _hl : _notHl,
                    widget: GenderWidget(
                        genderType: "FEMALE",
                        onPressed: () {
                          setState(() {
                            _gender = true;
                          });
                        }),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: BoxWidget(
              boxColor: _hl,
              widget: HeightWidget(
                sliderValue: _heightValue,
                onPressed: (double value) {
                  setState(() {
                    _heightValue = value;
                  });
                },
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Row(children: [
              Expanded(
                child: BoxWidget(
                    boxColor: _hl,
                    widget: AgeWeightWidget(
                        value: _ageValue,
                        widgetType: "AGE",
                        onPlus: () {
                          setState(() {
                            _ageValue++;
                          });
                        },
                        onMinus: () {
                          setState(() {
                            _ageValue--;
                          });
                        })),
              ),
              Expanded(
                child: BoxWidget(
                    boxColor: _hl,
                    widget: AgeWeightWidget(
                        value: _weightValue,
                        widgetType: "WEIGHT",
                        onPlus: () {
                          setState(() {
                            _weightValue++;
                          });
                        },
                        onMinus: () {
                          setState(() {
                            _weightValue--;
                          });
                        })),
              ),
            ]),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Text(
                  "CALCULATE",
                  style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(height: _heightValue.toInt(), weight: _weightValue)));
              },
            ),
          ),
        ],
      ),
    );
  }
}
