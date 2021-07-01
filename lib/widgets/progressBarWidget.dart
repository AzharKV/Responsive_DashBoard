import 'package:flutter/material.dart';
import '../constants.dart';

class ProgressLBarWidget extends StatelessWidget {
  const ProgressLBarWidget({
    Key key,
    this.color = primaryColor,
    @required this.percentage,
  }) : super(key: key);

  final Color color;
  final int percentage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 5,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              Container(
            height: 5,
            width: constraints.maxWidth * (percentage / 100),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        )
      ],
    );
  }
}
