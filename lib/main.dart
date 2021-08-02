import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/pages/about.dart';
import 'package:web_portfolio/pages/getstarted.dart';
import 'package:web_portfolio/pages/home/home.dart';
import 'package:web_portfolio/pages/portfolio.dart';
import 'package:web_portfolio/pages/privacy.dart';
import 'package:web_portfolio/pages/sanitization.dart';
import 'package:web_portfolio/pages/services.dart';
import 'package:web_portfolio/pages/tandc.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:web_portfolio/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    setPathUrlStrategy();
    return MaterialApp(
      title: "Bhejdo",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      initialRoute: '/Home',
      routes: {
        '/Home' :(context) =>  Home(),
        '/GetStarted': (context) =>  getstarted(),
        '/Sanitization': (context) =>  sanitization(),
        '/About': (context) =>  about(),
        '/Terms&Conditions': (context) =>  tandc(),
        '/PrivacyPolicy': (context) =>  privacy(),
        '/Services': (context) =>  Servcies(),
        '/Portfolio': (context) =>  portfolio(),
      },
      darkTheme: Theme.of(context).copyWith(
        platform: TargetPlatform.android,
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        canvasColor: kBackgroundColor,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget),
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.resize(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.resize(2460, name: "4K"),
        ],
        background: Container(
          color: kBackgroundColor,
        ),
      ),
      home: Home(),
    );
  }
}
