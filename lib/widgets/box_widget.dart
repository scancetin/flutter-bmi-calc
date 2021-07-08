import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  final Color boxColor;
  final Widget widget;
  const BoxWidget({Key key, this.boxColor, this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(color: boxColor, borderRadius: BorderRadius.circular(20)),
      child: widget,
    );
  }
}
