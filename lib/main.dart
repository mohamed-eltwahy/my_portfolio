import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/screens/home/home.dart';
import 'package:my_portfolio/screens/mainSection.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       builder: (context, widget) => ResponsiveWrapper.builder(
          widget,
          maxWidth: 1080,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(3000, name: TABLET),
            ResponsiveBreakpoint.autoScale(5000, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(8000, name: "4K"),
          ],
        ),
      title: 'Mohammed Saber',
       theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        highlightColor: kPrimaryColor,
      ),
      home: MainPage(),
    );
  }
}
