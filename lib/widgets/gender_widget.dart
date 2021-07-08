import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderWidget extends StatelessWidget {
  final String genderType;
  final Function onPressed;
  const GenderWidget({Key key, this.onPressed, this.genderType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Icon(genderType == "FEMALE" ? FontAwesomeIcons.venus : FontAwesomeIcons.mars, size: 80),
          ),
          Text(
            genderType,
            style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20)),
          )
        ],
      ),
      onTap: onPressed,
    );
  }
}
