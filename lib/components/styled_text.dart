import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trapay/contants/constants.dart';

class StyledText extends StatelessWidget {
  const StyledText({
    Key? key,
    this.copy = "",
    @required this.textStyle,
    this.weight = FontWeight.normal,
    this.style = FontStyle.normal,
    this.size = 0.0,
    this.color = Colors.black,
  }) : super(key: key);

  final String copy;
  final textStyle;
  final FontWeight weight;
  final FontStyle style;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$copy',
      style: GoogleFonts.poppins(
        textStyle: textStyle,
        fontSize: size,
        fontWeight: weight,
        fontStyle: style,
        color: color,
      ),
    );
  }
}
