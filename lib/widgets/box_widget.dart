import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  final Color boxColor;
  final Widget widget;
  final double boxWidth;
  const BoxWidget({Key key, this.boxColor, this.widget, this.boxWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * boxWidth,
      height: MediaQuery.of(context).size.height * 0.30,
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(color: boxColor, borderRadius: BorderRadius.circular(20)),
        child: widget,
      ),
    );
  }
}
