import 'package:flutter/material.dart';
import 'package:trapay/components/styled_text.dart';
import 'package:trapay/contants/constants.dart';

class BottomNavIconBtn extends StatelessWidget {
  const BottomNavIconBtn({
    Key? key,
    this.title = "",
    this.icon = Icons.home,
    this.color = Colors.black54,
    @required this.press,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final Color color;
  final press;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: press,
        focusColor: accentColor,
        hoverColor: accentColor,
        child: Container(
          child: Column(
            children: <Widget>[
              Icon(
                icon,
                size: 28.0,
                color: color,
              ),
              SizedBox(height: 4.0),
              StyledText(
                copy: "$title",
                textStyle: Theme.of(context).textTheme.button,
                weight: FontWeight.w500,
                size: 13.0,
                color: color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
