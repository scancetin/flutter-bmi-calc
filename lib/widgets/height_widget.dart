import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeightWidget extends StatelessWidget {
  final double sliderValue;
  final Function onPressed;
  const HeightWidget({Key key, this.onPressed, this.sliderValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Text(
            "HEIGHT",
            style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              sliderValue.round().toString(),
              style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.w900)),
            ),
            Text(
              "cm",
              style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            )
          ],
        ),
        Slider(
          value: sliderValue,
          min: 100,
          max: 250,
          divisions: 150,
          label: sliderValue.round().toString(),
          onChanged: onPressed,
        )
      ],
    );
  }
}
