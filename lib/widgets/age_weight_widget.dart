import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AgeWeightWidget extends StatelessWidget {
  final String widgetType;
  final int value;
  final Function onPlus;
  final Function onMinus;
  const AgeWeightWidget({Key key, this.widgetType, this.value, this.onMinus, this.onPlus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widgetType,
          style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20)),
        ),
        Text(
          value.toString(),
          style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.w900)),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Color(0xFF51515C)),
              child: IconButton(icon: Icon(FontAwesomeIcons.plus), onPressed: onPlus),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Color(0xFF51515C)),
              child: IconButton(icon: Icon(FontAwesomeIcons.minus), onPressed: onMinus),
            ),
          ],
        )
      ],
    );
  }
}
