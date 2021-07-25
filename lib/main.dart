import 'package:flutter/material.dart';
import 'package:trapay/contants/constants.dart';

import 'screens/home_screen.dart';

void main() => runApp(TraPay());

class TraPay extends StatelessWidget {
  const TraPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: primaryColor,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


    