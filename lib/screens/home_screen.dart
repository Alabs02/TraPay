import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:trapay/components/styled_text.dart';
import 'package:trapay/contants/constants.dart';
import 'package:trapay/contants/default.dart';
import 'package:trapay/model/services.dart';
import '../components/bottom_nav_icon_btn.dart';

import '../components/credit_card.dart';
import '../components/custom_text_button.dart';
import '../components/transaction_history_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double fontSize = 20.0;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              width: size.width,
              height: size.height * 0.12,
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          print('Clicked');
                        },
                        child: Container(
                          width: 50.0,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                            right: defaultPadding / 2,
                          ),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius:
                                BorderRadius.circular(defaultPadding / 2),
                          ),
                          child: Icon(
                            LineIcons.qrcode,
                            color: brandBlack,
                            size: 38.0,
                          ),
                        ),
                      ),
                      StyledText(
                        copy: "Scan To Pay",
                        textStyle: Theme.of(context).textTheme.headline6,
                        size: 19.0,
                        weight: FontWeight.w900,
                        style: FontStyle.normal,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: accentColor,
                    backgroundImage: AssetImage('assets/images/profile2.jpg'),
                    radius: 25.0,
                  ),
                ],
              ),
            ),
            Container(
              width: size.width,
              height: size.height * 0.22,
              margin: EdgeInsets.only(
                top: defaultPadding / 2,
                bottom: defaultPadding / 2,
              ),
              child: GridView.count(
                primary: false,
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                crossAxisSpacing: 10,
                // mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  CreditCard(
                    digits: "253",
                    code: "5360 EGP",
                    icon: "assets/icons/mastercard.png",
                    color: accentColor.withOpacity(0.5),
                    lightTextColor: Colors.black54,
                    textColor: Colors.black,
                  ),
                  CreditCard(
                    digits: "161",
                    code: "15263 EGP",
                    icon: "assets/icons/visa.png",
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  StyledText(
                    copy: "Services",
                    textStyle: Theme.of(context).textTheme.headline2,
                    weight: FontWeight.bold,
                    size: 20.0,
                    color: Colors.black,
                  ),
                  InkWell(
                    onTap: () => print('see more'),
                    child: StyledText(
                      copy: "See More",
                      textStyle: Theme.of(context).textTheme.button,
                      color: Colors.black87,
                      weight: FontWeight.w500,
                      size: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding / 1.5,
              ),
              child: Row(
                  children: List.generate(services.length, (index) {
                return CustomTextButton(
                  press: () {
                    print("${services[index]['title']} clicked");
                  },
                  icon: services[index]['icon'],
                  copy: services[index]['title'],
                  color: services[index]['color'],
                );
              })),
            ),
            SizedBox(height: 15.0),
            Container(
              width: size.width,
              // color: Colors.red,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            StyledText(
                              copy: "History",
                              textStyle: Theme.of(context).textTheme.headline2,
                              weight: FontWeight.bold,
                              size: 20.0,
                              color: Colors.black,
                            ),
                            SizedBox(height: defaultPadding / 4),
                            StyledText(
                              copy: "Last 10 Days",
                              textStyle: Theme.of(context).textTheme.bodyText1,
                              weight: FontWeight.w500,
                              size: 15.0,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                        Icon(
                          LineIcons.history,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ],
                    ),
                    SizedBox(height: defaultPadding),
                    TransactionHistoryCard(
                      name: "Shein Cloths",
                      date: "23 Feb 2021",
                      amount: "-152EGP",
                      color: Colors.black,
                    ),
                    TransactionHistoryCard(
                      name: "Talabat Food",
                      date: "18 Feb 2021",
                      amount: "+152EGP",
                      color: Colors.orange,
                    ),
                    TransactionHistoryCard(
                      name: "Buy Power",
                      date: "10 Feb 2021",
                      amount: "2000EGP",
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: size.height * 0.1,
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          vertical: defaultPadding / 2,
          horizontal: defaultPadding / 4,
        ),
        child: Row(
          children: <Widget>[
            BottomNavIconBtn(
              title: "Home",
              icon: Icons.dashboard_rounded,
              color: (ModalRoute.of(context)!.settings.name == '/') ? Colors.black : Colors.black54,
              press: () {
                print(ModalRoute.of(context)!.settings.name);
              },
            ),
            BottomNavIconBtn(
              title: "Services",
              icon: LineIcons.layerGroup,
              color: Colors.black54,
              press: () {
                print(ModalRoute.of(context)!.settings.name);
              },
            ),
            BottomNavIconBtn(
              title: "Chatting",
              icon: LineIcons.rocketChat,
              color: Colors.black54,
              press: () {
                print(ModalRoute.of(context)!.settings.name);
              },
            ),
            BottomNavIconBtn(
              title: "Groups",
              icon: Icons.people_alt_rounded,
              color: Colors.black54,
              press: () {
                print(ModalRoute.of(context)!.settings.name);
              },
            ),
            BottomNavIconBtn(
              title: "More",
              icon: Icons.more_horiz_rounded,
              color: Colors.black54,
              press: () {
                print(ModalRoute.of(context)!.settings.name);
              },
            ),
          ],
        ),
      ),
    );
  }
}
