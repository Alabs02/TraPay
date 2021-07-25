import 'package:flutter/material.dart';
import 'package:trapay/components/styled_text.dart';
import 'package:trapay/contants/default.dart';

class TransactionHistoryCard extends StatelessWidget {
  const TransactionHistoryCard({
    Key? key,
    this.name = "",
    this.date = "",
    this.amount = "",
    this.color = Colors.black,
  }) : super(key: key);

  final String name;
  final String date;
  final String amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: defaultPadding / 2),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(defaultPadding / 2),
                ),
                child: Text(
                  name.substring(0, 1),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
              SizedBox(
                width: defaultPadding / 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  StyledText(
                    copy: "$name",
                    textStyle: Theme.of(context).textTheme.headline3,
                    weight: FontWeight.w700,
                    size: 15.0,
                    color: Colors.black,
                  ),
                  SizedBox(height: defaultPadding / 4),
                  StyledText(
                    copy: "$date",
                    textStyle: Theme.of(context).textTheme.bodyText1,
                    weight: FontWeight.w500,
                    size: 15.0,
                    color: Colors.black54,
                  ),
                ],
              ),
            ],
          ),
          StyledText(
            copy: "$amount",
            textStyle: Theme.of(context).textTheme.headline1,
            weight: FontWeight.w900,
            size: 18.0,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
