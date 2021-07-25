import 'package:flutter/material.dart';
import 'package:trapay/components/styled_text.dart';
import 'package:trapay/contants/constants.dart';
import 'package:trapay/contants/default.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    Key? key,

    this.digits = "",
    this.code = "",
    this.icon = "",
    this.color = Colors.grey,
    this.lightTextColor = Colors.white,
    this.textColor = Colors.white,
  }) : super(key: key);

  final String digits;
  final String code;
  final String icon;
  final Color color;
  final Color lightTextColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding / 2,
        vertical: defaultPadding,
      ),
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 35.0,
                width: 50.0,
                decoration: BoxDecoration(
                  // color: primaryColor,
                  image: DecorationImage(
                    image: AssetImage(icon),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              StyledText(
                copy: '**** **** *$digits',
                textStyle: Theme.of(context).textTheme.bodyText2,
                color: textColor,
                size: 11.0,
                weight: FontWeight.w400,
              ),
            ],
          ),
          SizedBox(height: defaultPadding / 2),
          StyledText(
            copy: "$code",
            textStyle: Theme.of(context).textTheme.headline1,
            weight: FontWeight.bold,
            size: 22.0,
            color: textColor,
          ),
          SizedBox(height: defaultPadding / 4),
          StyledText(
            copy: "Credit Card",
            textStyle: Theme.of(context).textTheme.bodyText1,
            weight: FontWeight.w500,
            size: 14.0,
            color: lightTextColor,
          ),
        ],
      ),
    );
  }
}
