import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:trapay/components/styled_text.dart';
import 'package:trapay/contants/constants.dart';
import 'package:trapay/contants/default.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    @required this.press,
    this.icon = Icons.money,
    this.color = Colors.indigo,
    this.copy = "",
  }) : super(key: key);

  final String copy;
  final IconData icon;
  final Color color;
  final press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      focusColor: accentColor,
      hoverColor: accentColor,
      borderRadius: BorderRadius.circular(defaultPadding / 4),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2, vertical: defaultPadding / 4),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              child: Icon(
                icon,
                color: color,
              ),
              backgroundColor: color.withOpacity(0.15),
            ),
            SizedBox(width: defaultPadding / 2),
            StyledText(
              copy: "$copy",
              textStyle: Theme.of(context).textTheme.button,
              weight: FontWeight.w500,
              size: 15.0,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
