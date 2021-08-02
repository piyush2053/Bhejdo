import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/models/header_item.dart';
import 'package:web_portfolio/pages/getstarted.dart';
import 'package:web_portfolio/pages/home/components/carousel_items.dart';
import 'package:web_portfolio/pages/home/home.dart';
import 'package:web_portfolio/pages/portfolio.dart';
import 'package:web_portfolio/pages/services.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/globals.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

import '../../about.dart';

class HeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => Home()),);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(66.0),
                child: Image.asset(
                  "assets/bhejdo.jpg",
                  height: 40.0,
                  width: 40.0,
                ),
              ),
            )),
      ),
    );
  }
}

List<HeaderItem> headerItems = [
  HeaderItem(
    title: "HOME",
    onTap: () {
      Navigator.pushNamed(context, '/Home');
    },
  ),
  HeaderItem(title: "ABOUT", onTap: () {
    Navigator.pushNamed(context, '/About');
  },),
  HeaderItem(title: "SERVICES", onTap: () {
    Navigator.pushNamed(context, '/Services');
  }),
  HeaderItem(title: "PORTFOLIO", onTap: () {
    Navigator.pushNamed(context, '/Portfolio');
  }),
  HeaderItem(
    title: "CONTACT US ",
    onTap: () {
     
    },
    isButton: true,
  ),
];

class HeaderRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: MOBILE),
      ],
      child: Row(
        children: headerItems
            .map(
              (item) => item.isButton
                  ? MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        decoration: BoxDecoration(
                          color: kDangerColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                        child: TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/About');
                          },
                          child: Text(
                            item.title,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                    
                  : MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        margin: EdgeInsets.only(right: 30.0),
                        child: GestureDetector(
                          onTap: item.onTap,
                          child: Text(
                            item.title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
            )
            .toList(),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: buildHeader(),
        ),
        // We will make this in a bit
        mobile: buildMobileHeader(),
        tablet: buildHeader(),
      ),
    );
  }

  // mobile header
  Widget buildMobileHeader() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeaderLogo(),
            
            GestureDetector(
              onTap: () {
                Globals.scaffoldKey.currentState.openEndDrawer();
              },
              child: Icon(
                FlutterIcons.menu_fea,
                color: Colors.black,
                size: 28.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  // mobile and smaller
  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderLogo(),
          HeaderRow(),
        ],
      ),
    );
  }
}
